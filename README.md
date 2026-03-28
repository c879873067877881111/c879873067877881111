# Hi, I'm Yan-Ting Yang

Backend Engineer with hands-on experience in energy management systems and IoT data pipelines.

## Tech Stack

**Backend**
- Java 17+ / Spring Boot 3.x / Spring Security
- MyBatis / JPA
- REST API Design

**Database**
- PostgreSQL / MySQL / MongoDB / Redis

**IoT & Data**
- Python
- Modbus TCP/IP Data Collection
- MQTT Protocol
- Apache Airflow (ETL Pipeline)
- Prometheus + Grafana Monitoring

**DevOps**
- Docker / Docker Compose
- GitHub Actions CI/CD
- GCP Cloud Deployment

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
