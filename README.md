# Ansible Roles

This repo contains a bunch of ansible roles that a use on a regular basis.

## Usage

In my ansible collection, I use the following structure:

```
poetry.lock
pyproject.toml
hosts.yml (inventory file)
plays/
    playbook.yml
run.sh (copy from this repo)
```

I can then run a playbook with the following command:

```bash
./run.sh playbook.yml
```

This will copy this repo into the parent of the ansible collection and run the playbook using ansible installed in the poetry environment.

## Targets

This repo is predominantly targeted towards debian hosts.


## Roles

See the README.md in each role for more information.
