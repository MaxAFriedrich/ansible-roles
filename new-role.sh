
#!/bin/bash

# Check if a role name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <role_name>"
    exit 1
fi

ROLE_NAME=$1

# Define the directory structure for the Ansible role
ROLE_DIR="./$ROLE_NAME"
DIRECTORIES=(
    "$ROLE_DIR/tasks"
    "$ROLE_DIR/handlers"
    "$ROLE_DIR/vars"
    "$ROLE_DIR/defaults"
    "$ROLE_DIR/files"
    "$ROLE_DIR/templates"
    "$ROLE_DIR/meta"
)

# Create the role directory and subdirectories
mkdir -p "$ROLE_DIR"

for DIR in "${DIRECTORIES[@]}"; do
    mkdir -p "$DIR"
    
    # Create a main.yml file in appropriate directories
    case "$DIR" in
        "$ROLE_DIR/tasks" | "$ROLE_DIR/handlers" | "$ROLE_DIR/defaults" | "$ROLE_DIR/vars")
            echo "---" > "$DIR/main.yml"
            ;;
        "$ROLE_DIR/files" | "$ROLE_DIR/templates" | "$ROLE_DIR/meta")
            # Create a .gitkeep file in empty directories
            touch "$DIR/.gitkeep"
            ;;
    esac
done

# Create a README file
cat <<EOL > "$ROLE_DIR/README.md"
# $ROLE_NAME

## Description

## Role Variables

## Dependencies

## Example Usage

EOL

echo "Ansible role '$ROLE_NAME' created successfully."
