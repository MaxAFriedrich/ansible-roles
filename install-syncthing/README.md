# install-syncthing

Installs Syncthing and enables the user service.

Usage

- hosts: all
  roles:
    - role: install-syncthing
      vars:
        username: "{{ ansible_user }}"
