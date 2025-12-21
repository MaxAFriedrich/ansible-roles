# disable-sleep

Disables suspend/hibernate and lid actions via systemd config, then restarts logind.

Usage

- hosts: all
  roles:
    - disable-sleep
