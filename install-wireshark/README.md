# install-wireshark

Installs Wireshark and configures group access.

Usage

- hosts: all
  roles:
    - role: install-wireshark
      vars:
        wireshark_cli: true
        wireshark_gui: false
        wireshark_user: "{{ ansible_user }}"
