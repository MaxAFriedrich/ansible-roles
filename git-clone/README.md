# git-clone

Clones a git repo to a directory (creates it if missing).

Usage

- hosts: all
  roles:
    - role: git-clone
      vars:
        repo: "<required>"
        dest: /docker
        branch: main
