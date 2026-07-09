# DevOps Training

Учебный репозиторий для изучения Linux, Bash, Docker, Docker Compose, GitHub Actions и дальнейшего освоения DevOps-инструментов.

## Repository Structure

```text
.
├── ansible
│   └── README.md
├── compose-project
│   ├── docker-compose.yml
│   └── README.md
├── docker
│   ├── docker-compose.yml
│   ├── Dockerfile
│   ├── index.html
│   └── README.md
├── linux
│   ├── commands.md
│   ├── config.env
│   ├── config.example
│   ├── info.sh
│   ├── logs
│   │   └── server.log
│   └── README.md
├── nginx
│   └── README.md
├── README.md
└── readme.txt
```

## Completed Modules

### Linux

* Ubuntu Server installation and configuration
* Network and DNS configuration
* Bash scripting
* Environment variables
* Log files
* Cron jobs

Monitoring script:

```bash
./linux/info.sh
```

### Docker

* Docker installation
* Image management
* Container management
* Custom Docker images
* Dockerfile

Build image:

```bash
docker build -t my-nginx ./docker
```

Run container:

```bash
docker run -d -p 8080:80 --name my-nginx-container my-nginx
```

### Docker Compose

Multi-container applications using:

* Nginx
* Redis
* Networks
* Volumes
* Environment variables

Start services:

```bash
docker compose up -d
```

Stop services:

```bash
docker compose down
```

### GitHub Actions

Implemented CI pipeline:

* Checkout repository
* Build Docker image
* Validate Docker Compose configuration
* Login to Docker Hub
* Push Docker image

Workflow location:

```text
.github/workflows/docker-build.yml
```

## Docker Hub

Images are automatically published to Docker Hub.

Current tagging strategy:

```text
twody/my-nginx:latest
twody/my-nginx:<commit-sha>
```

## CI Pipeline

```text
Git Push
    │
    ▼
GitHub Actions
    │
    ├── Build Docker Image
    ├── Validate Compose
    ├── Login Docker Hub
    └── Push Docker Image
            │
            ▼
        Docker Hub
```

## Technologies

* Linux (Ubuntu Server)
* Bash
* Cron
* Git
* GitHub
* Docker
* Docker Compose
* GitHub Actions
* Docker Hub

## Roadmap

* [x] Linux Basics
* [x] Bash Scripting
* [x] Cron
* [x] Git & GitHub
* [x] Docker
* [x] Docker Compose
* [x] GitHub Actions CI
* [x] Docker Hub Integration
* [ ] Continuous Deployment (CD)
* [ ] Nginx Reverse Proxy
* [ ] Monitoring (Prometheus, Grafana)
* [ ] Ansible
* [ ] Kubernetes
* [ ] Cloud Infrastructure

```
```

