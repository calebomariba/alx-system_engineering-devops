# ALX System Engineering DevOps - Firewall Configuration

## Project Overview
This repository contains solutions for the ALX System Engineering DevOps program, focusing on system administration tasks. The `0x13-firewall` directory includes scripts and configurations for setting up firewall rules using `ufw` on a Linux server.

## Task: 0-block_all_incoming_traffic_but
This task involves configuring the `ufw` firewall on the `web-01` server to block all incoming traffic except for specific TCP ports: 22 (SSH), 80 (HTTP), and 443 (HTTPS SSL). The configuration ensures secure access to the server while allowing necessary services to function.

### Requirements
- Configure `ufw` on `web-01` to:
  - Block all incoming traffic by default.
  - Allow TCP traffic on ports 22 (SSH), 80 (HTTP), and 443 (HTTPS SSL).
- The configuration commands must be saved in the file `0-block_all_incoming_traffic_but`.
- Optionally, the same configuration can be applied to `lb-01` and `web-02`, but only `web-01` will be evaluated.

### Repository Structure
- **GitHub Repository**: `alx-system_engineering-devops`
- **Directory**: `0x13-firewall`
- **File**: `0-block_all_incoming_traffic_but`

## Setup Instructions
To configure the `ufw` firewall on `web-01`, follow these steps:

1. **Install ufw** (if not already installed):
   ```bash
   sudo apt-get update
   sudo apt-get install ufw