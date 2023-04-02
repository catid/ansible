#!/bin/bash

# Enable the 'errexit' option to make the script exit if a command fails
set -e

echo "Updating software on servers."

./update_apt.sh

echo "Installing NVIDIA drivers."

./install_cuda.sh

echo "Installing system configuration."

./install_zsh.sh
./install_tmux_conf.sh
./install_conda.sh
./upgrade_swap_file.sh
./setup_zswap.sh
./setup_nfs_mounts.sh

echo "Installing tools."

./install_tools.sh

echo "Setting up project repo."

./setup_upsampling.sh

echo "Copying dataset."

./update_dataset.sh

# If all scripts succeed, print a success message
echo "All scripts executed successfully."
