#!/bin/bash

# Enable the 'errexit' option to make the script exit if a command fails
set -e

echo "Removing CUDA..."

ansible-playbook playbooks/remove_cuda.yml

echo "Reinstalling CUDA..."

ansible-playbook playbooks/install_cuda.yml
