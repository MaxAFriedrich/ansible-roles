# install-zoom

This role installs Zoom video conferencing client on Debian-based systems.

## Requirements

- Debian-based Linux distribution (Ubuntu, Debian, etc.)
- sudo/root access

## Role Variables

None.

## Dependencies

None.

## Example Playbook

```yaml
- hosts: workstations
  become: yes
  roles:
    - install-zoom
```
