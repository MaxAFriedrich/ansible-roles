# install-syncthing

This role installs Syncthing on Debian-based systems and enables and starts the Syncthing service for the current user.

## Usage

Include this role in your playbook to install Syncthing.

Example playbook:

```yaml
- hosts: all
  become: yes
  roles:
    - role: install-syncthing
