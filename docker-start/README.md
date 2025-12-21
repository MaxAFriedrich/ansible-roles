# docker-start

Starts a Docker Compose project from files you provide in `docker_dir`.

Usage

- hosts: all
  roles:
    - role: docker-start
      vars:
        docker_dir: /docker
        files_to_copy:
          - { src: 'docker-compose.yml', dest: 'docker-compose.yml' }
