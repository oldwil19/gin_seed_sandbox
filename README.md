
# Go Application with Docker and Gin Framework

This project is a simple Go application using the **Gin framework**, containerized with Docker, and prepared for future scalability with optional services like Redis, LocalStack, and MySQL.

---

## Table of Contents
1. [Project Overview](#project-overview)
2. [Technologies Used](#technologies-used)
3. [Setup Instructions](#setup-instructions)
   - [Environment Variables](#environment-variables)
   - [Running the Project](#running-the-project)
4. [Optional Services](#optional-services)
   - [Redis](#redis)
   - [LocalStack](#localstack)
   - [MySQL](#mysql)
5. [Development Workflow](#development-workflow)
6. [File Structure](#file-structure)
7. [Future Improvements](#future-improvements)

---

## Project Overview

This Go application is built using the Gin framework, a lightweight and fast web framework. The project is containerized using Docker and managed with Docker Compose, ensuring consistency across environments. The main endpoint demonstrates basic functionality, and the setup allows easy addition of external services like Redis, LocalStack, and MySQL for future enhancements.

---

## Technologies Used
- **Go** (Golang) - Programming language.
- **Gin Framework** - HTTP web framework.
- **Docker** - Containerization platform.
- **Docker Compose** - Multi-container management.
- **Redis** (Optional) - In-memory data structure store.
- **LocalStack** (Optional) - AWS service emulator.
- **MySQL** (Optional) - Relational database.

---

## Setup Instructions

### Prerequisites
- Docker and Docker Compose installed on your system.
- Basic understanding of Go and containerized environments.

### Environment Variables
- `GIN_MODE` - Defines the mode for Gin (`debug`, `release`, or `test`).
- `PORT` - Defines the application port (default: `8080`).
- Additional environment variables for Redis, LocalStack, and MySQL can be configured when required.

### Running the Project
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Build and run the Docker containers:
   ```bash
   docker-compose up --build
   ```

3. Access the application at `http://localhost:8080`.

---

## Optional Services

### Redis
Redis is prepared as an optional service for caching or messaging. To enable Redis:
1. Uncomment the `redis` section in `docker-compose.yml`.
2. Uncomment the `redis_data` volume.
3. Start the service:
   ```bash
   docker-compose up -d redis
   ```

### LocalStack
LocalStack emulates AWS services locally. To enable LocalStack:
1. Uncomment the `localstack` section in `docker-compose.yml`.
2. Uncomment the `localstack_data` volume.
3. Start the service:
   ```bash
   docker-compose up -d localstack
   ```

### MySQL
MySQL is configured for future use as a relational database. To enable MySQL:
1. Uncomment the `mysql` section in `docker-compose.yml`.
2. Uncomment the `mysql_data` volume.
3. Start the service:
   ```bash
   docker-compose up -d mysql
   ```

---

## Development Workflow

### Hot Reload
Use tools like `air` or `reflex` for hot reload during development:
1. Install `air`:
   ```bash
   go install github.com/cosmtrek/air@latest
   ```
2. Run `air` inside the container:
   ```bash
   docker-compose exec app air
   ```

---

## File Structure
```
.
├── Dockerfile             # Dockerfile for multi-stage build
├── docker-compose.yml     # Docker Compose configuration
├── go.mod                 # Go modules definition
├── go.sum                 # Dependencies checksum
├── main.go                # Entry point of the application
```

---

## Future Improvements
- Add unit tests using the `testing` package.
- Integrate CI/CD pipelines for automated testing and deployment.
- Extend the application with Redis caching and MySQL database integration.
- Add AWS service emulation with LocalStack for advanced development scenarios.
- Implement advanced routing and middleware in Gin.

---

This project is a strong foundation for developing containerized Go applications, with flexibility to scale and integrate additional services as needed.
