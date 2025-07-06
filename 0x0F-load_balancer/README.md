# 0x0F. Load Balancer

## Overview
This project focuses on improving a web stack by adding redundancy to web servers and implementing a load balancer to handle increased traffic and ensure reliability. The goal is to configure two web servers (`gc-[STUDENT_ID]-web-01` and `gc-[STUDENT_ID]-web-02`) to be identical, each running Nginx with a custom HTTP response header (`X-Served-By`) to track which server handles requests. Additionally, a load balancer (`gc-[STUDENT_ID]-lb-01`) will be configured in later tasks to distribute traffic between the web servers.

This repository contains a Bash script to automate the configuration of a new Ubuntu 16.04 LTS server to meet these requirements.

## Requirements
- **Environment**: Ubuntu 16.04 LTS
- **Editors**: vi, vim, emacs
- **Files**:
  - All files must end with a new line.
  - A `README.md` file is mandatory at the root of the project folder.
  - All Bash scripts must be executable and pass `Shellcheck` (version 0.3.7) without errors (ignoring SC2154).
  - Bash scripts must start with `#!/usr/bin/env bash` and include a comment on the second line explaining their purpose.
- **Task-Specific Requirements**:
  - Configure Nginx on `web-01` and `web-02` to include a custom HTTP header `X-Served-By` with the server's hostname.
  - Automate the configuration using a Bash script (`0-custom_http_response_header`).

## Repository
- **GitHub Repository**: `alx-system_engineering-devops`
- **Directory**: `0x0F-load_balancer`
- **File**: `0-custom_http_response_header`

## Task 0: Double the Number of Webservers
### Description
The `0-custom_http_response_header` script configures a new Ubuntu 16.04 LTS server to run Nginx with a custom HTTP response header (`X-Served-By`) that contains the hostname of the server. This setup ensures that both `web-01` and `web-02` are identical and ready to be used behind a load balancer.

### Script Details
- **File**: `0-custom_http_response_header`
- **Purpose**: Installs Nginx, configures it to serve a basic webpage, and adds the `X-Served-By` header with the server’s hostname.
- **Actions**:
  - Updates the package list and installs Nginx.
  - Retrieves the server’s hostname.
  - Configures Nginx to listen on port 80 and include the `X-Served-By` header.
  - Creates a simple `index.html` file for testing.
  - Restarts and enables Nginx to ensure it runs on boot.

### Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/calebomariba/alx-system_engineering-devops.git
   cd alx-system_engineering-devops/0x0F-load_balancer