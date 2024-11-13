# install-wireshark

This role installs Wireshark on Debian-based systems.

## Variables

- `wireshark_cli`: Install the command-line version of Wireshark. Default: `true`
- `wireshark_gui`: Install the graphical version of Wireshark. Default: `false`
- `wireshark_cli_package`: List of packages to install the command-line version of Wireshark. Default: `tshark`
- `wireshark_gui_package`: List of packages to install the graphical version of Wireshark. Default: `wireshark`
- `wireshark_user`: User to run Wireshark as. Default: `{{ ansible_user }}`

