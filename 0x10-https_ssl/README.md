# HTTPS & SSL Configuration - ALX System Engineering DevOps

## Project Overview
This repository contains configurations and scripts for setting up HTTPS, SSL termination, and secure web traffic redirection using HAProxy. The project demonstrates how to properly configure subdomains, SSL certificates, and secure traffic handling.

## Tasks

### 0. World Wide Web
**File:** `0-world_wide_web`  
**Description:**  
Configures DNS subdomains (www, lb-01, web-01, web-02) to point to specific IP addresses and includes a Bash script that audits DNS records.

**Features:**
- Accepts domain and optional subdomain arguments
- Displays subdomain information in specific format
- Uses awk and Bash functions
- Checks standard subdomains in order: www, lb-01, web-01, web-02

**Usage:**
```bash
./0-world_wide_web domain [subdomain]
