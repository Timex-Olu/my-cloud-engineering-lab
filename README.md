# ☁️ Cloud Engineering Lab: Docker & Security
Managed by: **Oluwatimileyin**

This repository contains the infrastructure and configuration for a secured, containerized web environment running on an Ubuntu 24.04 LTS server.

## 🛠️ Tech Stack & Skills
* **Virtualization:** Oracle VirtualBox with dual-NIC networking (NAT + Host-Only).
* **Containerization:** Docker & Docker Compose for service orchestration.
* **Web Server:** Nginx (customized dashboard).
* **Security:** UFW Firewall (Strict port management: SSH & 8080).
* **Automation:** Bash scripting for health monitoring and log rotation.

## 🚀 How it Works
1. The server is hardened using **UFW** to only allow specific traffic.
2. The web service is deployed as a **Docker Container**, ensuring environment parity.
3. Local DNS is configured to map the server IP to `olu.test` for professional access.
