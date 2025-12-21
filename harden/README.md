# harden

Applies OS and SSH hardening and optionally installs Fail2Ban.

Usage

- hosts: all
  roles:
    - role: harden
      vars:
        enable_ssh_hardening: true
