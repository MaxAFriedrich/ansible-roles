# harden

This role applies security hardening to the system by including the following roles:

- `devsec.hardening.os_hardening`
- `devsec.hardening.ssh_hardening`
- `robertdebock.fail2ban`

## Variables

- `enable_ssh_hardening`: Enable SSH hardening. Default is `true`.

## Usage

Install dependencies:

```bash
ansible-galaxy install dev-sec.os-hardening dev-sec.ssh-hardening robertdebock.fail2ban
```
