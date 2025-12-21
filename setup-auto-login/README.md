# setup-auto-login

Enables auto-login on tty1 for a specified user.

Usage

- hosts: all
  roles:
    - role: setup-auto-login
      vars:
        auto_login_user: "{{ lookup('env', 'USER') }}"
