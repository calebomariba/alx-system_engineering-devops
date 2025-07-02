# SSH Configuration and Key Management

This repository contains scripts and configuration files for managing SSH connections using key-based authentication.

## Contents

1. [Scripts](#scripts)
2. [Configuration Files](#configuration-files)
3. [Requirements](#requirements)
4. [Usage](#usage)

## Scripts

### `0-use_a_private_key`
Connects to a server using the private key `~/.ssh/school` as user `ubuntu`.

### `1-create_ssh_key_pair`
Generates an RSA key pair:
- Private key: `school` (4096 bits)
- Passphrase: `betty`

## Configuration Files

### `2-ssh_config`
SSH client configuration that:
- Uses `~/.ssh/school` as identity file
- Disables password authentication

### `100-puppet_ssh_config.pp` (Advanced)
Puppet manifest that automatically configures:
- Private key authentication
- Password authentication disabled

## Requirements

- Ubuntu 20.04 LTS
- All files must end with newline
- Bash scripts must be executable
- First line of scripts: `#!/usr/bin/env bash`
- Second line: Script description comment

## Usage

1. Make scripts executable:
   ```bash
   chmod +x 0-use_a_private_key 1-create_ssh_key_pair