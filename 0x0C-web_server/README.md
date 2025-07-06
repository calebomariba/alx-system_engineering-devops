# 0x0C. Web Server

> Part of the ALX System Engineering & DevOps curriculum  
> Author: [Caleb Omariba](https://github.com/calebomariba)

---

## 📚 Table of Contents

- [Description](#description)
- [Learning Objectives](#learning-objectives)
- [Environment](#environment)
- [Tasks](#tasks)
  - [0. Transfer a file to your server](#0-transfer-a-file-to-your-server)
  - [1. Install Nginx web server](#1-install-nginx-web-server)
  - [2. Setup a domain name](#2-setup-a-domain-name)
  - [3. Redirection](#3-redirection)
  - [4. Not found page 404](#4-not-found-page-404)
  - [5. Install Nginx with Puppet](#5-install-nginx-with-puppet)
- [Usage Examples](#usage-examples)
- [Resources](#resources)
- [Author](#author)

---

## 📖 Description

This project focuses on deploying a basic web server infrastructure using **Nginx** and configuring it via **Bash** scripts and **Puppet** manifests. You will also learn how to transfer files securely using `scp`, register domain names, and configure custom error pages and redirects.

---

## 🎯 Learning Objectives

By the end of this project, you will be able to:

- Understand the roles of web servers
- Install and configure the **Nginx** web server
- Write Bash scripts for provisioning servers
- Set up **DNS records** for custom domain names
- Configure **custom HTTP responses**, **redirects**, and **error pages**
- Automate configuration with **Puppet**

---

## 💻 Environment

- Ubuntu 20.04 LTS
- Bash scripts using shellcheck
- Puppet 5.x
- Nginx 1.18+
- DNS domain via `.tech` (from GitHub Student Developer Pack)

---

## ✅ Tasks

### 0. Transfer a file to your server

**File:** `0-transfer_file`  
**Description:**  
Bash script that transfers a local file to a remote server via `scp`.  
**Usage:**
```bash
./0-transfer_file some_file.html 8.8.8.8 ubuntu ~/.ssh/private_key
