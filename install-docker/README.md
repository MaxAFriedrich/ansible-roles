# install-docker

Installs Docker and docker-compose, starts the service, and optionally runs watchtower.

Usage

- hosts: all
  roles:
    - role: install-docker
      vars:
        auto_update: false
