# ssh-port

Sets the SSH port via `FORCE_SSH_PORT` (default: 22).

Usage

- hosts: all
  roles:
    - role: ssh-port
      vars:
        FORCE_SSH_PORT: 22
