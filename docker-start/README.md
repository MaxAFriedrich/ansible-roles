# docker-start

This role starts a Docker docker-compose service.

## Variables

- `docker_dir`: Directory to put Docker stuff into. Default is `/docker`.
- `files_to_copy`: List of files to copy. Each item should be a dictionary with `src` and `dest` keys. **Required**

## Usage

Include this role in your playbook to start Postmail in Docker.

Example playbook:

```yaml
- hosts: all
  become: yes
  roles:
    - role: docker-start
      vars:
        docker_dir: /custom/docker/dir
        files_to_copy:
          - { src: 'Caddyfile', dest: 'Caddyfile' }
          - { src: 'config.yml', dest: 'config.yml' }
          - { src: 'additional.conf', dest: 'additional.conf' }
          - { src: 'docker-compose.yml', dest: 'docker-compose.yml' }
```

None of the files are automatically copied to the remote host. You must copy them yourself. This is to increase the
flexibility of the role.
