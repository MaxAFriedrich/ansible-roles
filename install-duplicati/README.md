# install-duplicati

This role installs Duplicati backup software on Debian-based systems.

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
    - install-duplicati
```

## Notes

This role installs Duplicati from the official beta repository. After installation, Duplicati can be accessed via the system tray icon or by navigating to http://localhost:8200 in a web browser.
