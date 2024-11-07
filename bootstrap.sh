#!/usr/bin/env bash

set -e

# Install Ansible if not installed (Debian/Ubuntu)
if ! command -v ansible &> /dev/null; then
  sudo apt update && sudo apt install -y ansible
fi

# Run the Ansible playbook using our user.
ansible-playbook -i hosts setup.yml --ask-become-pass
