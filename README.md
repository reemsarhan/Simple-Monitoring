# Simple-Monitoring

## Project URL  
[project URL](https://roadmap.sh/projects/simple-monitoring-dashboard)

# Netdata Monitoring Setup

This project demonstrates how to set up and customize a monitoring dashboard using **Netdata**, a real-time performance and health monitoring tool. It includes scripts to automate installation, testing, and cleanup processes.

---
Netdata is a free, open-source, real-time performance monitoring tool designed to track system and application metrics. It provides detailed insights into CPU usage, memory, disk I/O, network activity, and more through an interactive web-based dashboard. Lightweight and efficient, Netdata collects thousands of metrics per second without affecting system performance. It also includes customizable alerts, enabling you to set thresholds for specific metrics, such as CPU usage exceeding 80%. With its extensive range of plugins, it can monitor various services, applications, and containers, making it a versatile tool for troubleshooting and maintaining system health.
---

## Features
- Real-time monitoring of system metrics: CPU, memory, disk I/O, and more.
- Interactive web-based dashboard.
- Configurable alerts (e.g., CPU usage above 80%).
- Customizable charts and metrics.
- Automated setup and cleanup scripts.

## Getting Started

### Prerequisites
- A Linux system.
- Internet access for downloading dependencies.
- Basic knowledge of shell scripting.

## Installation
```bash
bash setup.sh
```
## Once installed, access the Netdata dashboard via:
```
http://<your-server-ip>:19999
```

## Testing
```
bash test_dashboard.sh
```

## Cleanup
```
bash cleanup.sh
```
