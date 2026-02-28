# install-dotenvage

Builds and installs a fully static `x86_64-unknown-linux-musl` dotenvage binary inside Docker, then installs it on the host.

Usage

- hosts: all
  roles:
    - install-dotenvage

Requirements

- Docker available on the target host (used to compile the musl binary)

Notes

- Override `dotenvage_version` to pin a specific tag (defaults to the latest release tag).
