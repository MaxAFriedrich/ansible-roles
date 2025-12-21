# remove-grub-delay

Sets GRUB_TIMEOUT=0 and updates grub.

Usage

- hosts: all
  roles:
    - remove-grub-delay
