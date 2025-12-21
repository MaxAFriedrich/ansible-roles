# install-opentofu

## Description

Installs OpenTofu on Debian/Ubuntu by adding the official APT repository keys, configuring the sources list, updating the apt cache, and installing the tofu package.

## Role Variables

None.

## Dependencies

- Requires become: true to write to /etc.
- Supported distributions: Debian and Ubuntu.

## Example Usage

```yaml
- hosts: all
  become: true
  roles:
    - install-opentofu
```
