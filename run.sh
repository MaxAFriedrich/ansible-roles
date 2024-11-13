#!/bin/bash

# Configuration
ROLES_REPO_DIR=../ansible-roles
REPO_URL=https://github.com/MaxAFriedrich/ansible-roles.git
REPO_BRANCH=master


# Check if a playbook name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <playbook_name.yml>"
    exit 1
fi

PLAYBOOK_NAME=$1

# Save the current directory
CURRENT_DIR=$(pwd)

# Clone the roles repository if it doesn't exist
if [ ! -d "$ROLES_REPO_DIR" ]; then
    echo "Cloning the roles repository..."
    git clone "$REPO_URL" "$ROLES_REPO_DIR"
else
    echo "Updating the roles repository..."
    cd "$ROLES_REPO_DIR"
    git pull origin "$REPO_BRANCH"
fi

# Set the ANSIBLE_ROLES_PATH
export ANSIBLE_ROLES_PATH="$ROLES_REPO_DIR"

# Change back to the original directory
cd "$CURRENT_DIR"

# Activate the Poetry environment and run poetry install
poetry install

# Run the Ansible playbook
poetry run ansible-playbook "plays/$PLAYBOOK_NAME" -i hosts.yml
