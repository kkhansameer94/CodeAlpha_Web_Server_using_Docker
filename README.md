# 🐳 CodeAlpha: Web Server using Docker (Task 4)

[![Docker](https://img.shields.io/badge/Container-Docker-2496ED?logo=docker&logoColor=white)](https://www.docker.com/)
[![Nginx](https://img.shields.io/badge/Web%20Server-Nginx%20Alpine-009639?logo=nginx&logoColor=white)](https://nginx.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A lightweight containerized Nginx web server deployment demonstrating container lifecycle management, port mapping, custom configuration overrides, and automated health checks.

---

## 📌 Architecture & Deliverables

* **Base Layer**: Hardened, ultra-lightweight `nginx:alpine` image.
* **Traffic Routing**: Custom `nginx.conf` routing presentation layers and dedicated `/health` telemetry endpoints.
* **Health Check**: Native Docker `HEALTHCHECK` directive continuously monitoring container availability.
* **Port Mapping**: Standardized bridge networking forwarding container port 80 to host interface.

---

## 🛠️ Build and Run Instructions

### 1. Build Docker Image
```bash
docker build -t codealpha-webserver:latest .
