# install-joplin

Installs Joplin AppImage and desktop integration.

Usage

- hosts: all
  roles:
    - role: install-joplin
      vars:
        joplin_version: "3.3.13"
        joplin_sha256: "22ff90b3846e2d2c9b2722d325fffa84775e362af9a4567a9fa8672e27c5a5bd"
