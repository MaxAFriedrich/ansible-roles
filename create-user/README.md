# create-user

Creates a user and optionally configures sudo/doas and SSH keys.

Usage

- hosts: all
  roles:
    - role: create-user
      vars:
        username: max
        user_password: "<required>"
        add_ssh: false
        is_sudo: false
