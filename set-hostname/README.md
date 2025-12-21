# set-hostname

Sets the system hostname to `inventory_hostname` and updates /etc/hostname and /etc/hosts.

Usage

- hosts: all
  roles:
    - set-hostname
