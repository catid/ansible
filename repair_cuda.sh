#!/bin/bash

# Enable the 'errexit' option to make the script exit if a command fails
set -e

echo "Selecting auto version of GCC, since CUDA drivers do not work with GCC 11."

ansible-playbook playbooks/select_gcc_auto.yml

echo "Removing CUDA..."

ansible-playbook playbooks/remove_cuda.yml

echo "Reinstalling CUDA..."

ansible-playbook playbooks/install_cuda.yml
