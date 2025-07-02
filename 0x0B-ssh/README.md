# SSH Access Scripts and Configuration

This document describes three components: a script to connect using a private key, a script to generate a key pair, and a configuration file for simplified SSH access.

---

## 0-use_a_private_key

This script connects to a remote server using SSH with a specified private key.

### Description

- Uses the SSH protocol to connect to a server.
- Authenticates with the private key located at `~/.ssh/school`.
- Connects as the `ubuntu` user to the server at IP address `34.238.242.118`.

### Usage

```bash
./0-use_a_private_key
