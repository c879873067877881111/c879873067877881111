#!/usr/bin/env bash
# Regenerates the Open Source Contributions section of README.md from the pull
# requests OWNER has opened in repositories they do not own. The section is
# delimited by the contributions:start / contributions:end markers; everything
# between them is replaced, so the list must not be edited by hand.
set -euo pipefail

owner="${1:?usage: update-contributions.sh <owner> [readme]}"
readme="${2:-README.md}"

# Repositories to keep out of the list, as owner/name.
excluded_repos=(
	five-million-SE-union/five-million-rbac-server
)

excluded_json=$(printf '%s\n' "${excluded_repos[@]}" | jq -R . | jq -s .)

json=$(gh search prs --author "$owner" --limit 100 \
	--json repository,number,title,url,createdAt)

entries=$(printf '%s' "$json" | jq -r --arg owner "$owner" --argjson excluded "$excluded_json" '
	map(select(.repository.nameWithOwner | startswith($owner + "/") | not))
	| map(select(.repository.nameWithOwner as $repo | $excluded | index($repo) | not))
	| sort_by(.createdAt) | reverse
	| .[]
	| "- [\(.repository.nameWithOwner)#\(.number)](\(.url)) " +
	  "![state](https://img.shields.io/github/pulls/detail/state/\(.repository.nameWithOwner)/\(.number)?label=)" +
	  " — \(.title)"
')

if [ -z "$entries" ]; then
	echo "no contributions found for $owner — refusing to empty the section" >&2
	exit 1
fi

# The entries go through a file rather than awk -v: BSD awk (macOS) rejects a
# newline inside a -v assignment, so a multi-line list cannot be passed that way.
entries_file=$(mktemp)
readme_tmp=$(mktemp)
trap 'rm -f "$entries_file" "$readme_tmp"' EXIT

printf '%s\n' "$entries" >"$entries_file"

awk -v entries_file="$entries_file" '
	/<!-- contributions:start -->/ {
		print
		while ((getline line < entries_file) > 0) print line
		skip = 1
		next
	}
	/<!-- contributions:end -->/ { skip = 0 }
	!skip
' "$readme" >"$readme_tmp"

cat "$readme_tmp" >"$readme"
