# Hi, I'm Yan-Ting Yang ヾ(＾-＾)ノ

Backend Engineer with hands-on experience in energy management systems and IoT data pipelines.

## Tech Stack

**Backend**

<img src="https://skillicons.dev/icons?i=java,spring" height="40" alt="Java, Spring Boot" align="middle" /> <img src="https://cdn.simpleicons.org/springsecurity" height="30" alt="Spring Security" align="middle" /> <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/hibernate/hibernate-original.svg" height="30" alt="Hibernate / JPA" align="middle" /> <img src="https://cdn.simpleicons.org/jsonwebtokens" height="30" alt="JWT" align="middle" /> <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/swagger/swagger-original.svg" height="30" alt="OpenAPI / Swagger" align="middle" />

- Java 11–17+ / Spring Boot 2.x–3.x / Spring Security
- MyBatis / Spring JDBC / Spring Data JPA · JWT & Session-Cookie Authentication
- Lombok / springdoc-openAPI · REST API Design

**Database**

<img src="https://skillicons.dev/icons?i=postgres,mysql,mongodb,redis" height="40" alt="PostgreSQL, MySQL, MongoDB, Redis" align="middle" />

- PostgreSQL / MySQL / MongoDB / Redis

**IoT & Data Engineering**

<img src="https://skillicons.dev/icons?i=python" height="40" alt="Python" align="middle" /> <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apacheairflow/apacheairflow-original.svg" height="30" alt="Apache Airflow" align="middle" /> <img src="https://skillicons.dev/icons?i=prometheus,grafana,selenium" height="40" alt="Prometheus, Grafana, Selenium" align="middle" /> <img src="https://cdn.simpleicons.org/mqtt" height="30" alt="MQTT" align="middle" />

- Python
- Modbus TCP/IP Data Collection · MQTT Protocol (paho-mqtt)
- Apache Airflow (ETL Pipeline)
- Prometheus + Grafana Monitoring
- Selenium / BeautifulSoup Web Scraping

**Mobile & Frontend**

<img src="https://skillicons.dev/icons?i=react,ts,nextjs,vite,html,css" height="40" alt="React, TypeScript, Next.js, Vite, HTML, CSS" align="middle" />

- React Native (Expo) · React / Next.js / TypeScript
- Vite · HTML / CSS

**DevOps**

<img src="https://skillicons.dev/icons?i=docker,nginx,githubactions,gcp" height="40" alt="Docker, Nginx, GitHub Actions, GCP" align="middle" />

- Docker / Docker Compose
- Nginx Reverse Proxy
- GitHub Actions CI/CD
- GCP Cloud Deployment

**Testing**

<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/junit/junit-original.svg" height="30" alt="JUnit" align="middle" /> <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jest/jest-plain.svg" height="30" alt="Jest" align="middle" />

- JUnit 5 · Testcontainers · Jest

## Projects

### [IoT Data Platform](https://github.com/c879873067877881111/iot-data-platform)

IoT 電力監控數據中台 — 整合真實 IoT 感測器與模擬數據，完整展示數據工程流程。

- **Data Ingestion**: ThingSpeak PZEM-004T real sensor + Python simulator (7 sites / 16 devices)
- **ETL**: Airflow 3.0.2 — deduplicate → mark rejected → compute delta → hourly/daily aggregation
- **Data Warehouse**: PostgreSQL Star Schema (staging → dimensions → facts)
- **API**: Spring Boot 3.5 + MyBatis Dynamic SQL, RFC 7807 error handling
- **Quality**: 6 automated data quality checks, ~2% dirty data cleaning pipeline
- **Testing**: 33 tests (DAO + Service + Controller)
- **Infra**: Docker Compose 7 services, `docker compose up -d` one command startup

## Work Experience Highlights

- Built SCADA energy management system backend serving 40+ sites (Spring Boot + MySQL + Redis + MQTT)
- Designed Modbus TCP data collection architecture handling hundreds of power meters with daily tens of thousands of records
- Containerized multi-project backend services with Docker and automated CI/CD via GitHub Actions + GCP self-hosted runner
