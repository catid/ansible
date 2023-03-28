# Setup

1. Install Ansible:

```bash
sudo apt update
sudo apt install -y ansible
```

2. Clone the repo:

```bash
git clone git@github.com:catid/ansible
cd ansible
```

3. Create sudo.yml

```bash
echo "ansible_become_password: myrootpassword" > playbooks/sudo.yml
```

4. Choose where dataset is stored

Edit the `update_dataset.sh` file to choose where the dataset lives.  By default it is under ~/dataset/ and lives on the `gpu4.lan` host.

4. Automatically set up all servers

```bash
./full_setup.sh
```

This will request the server login password at the start, and at a certain point the computers will reboot and prompt for enrolling a MOK key for the Nvidia drivers if they are not set up yet.  After that point it should complete unattended.

# Setup hosts

```bash
./update_apt.sh
./install_cuda.sh
./reboot.sh
./check_nvidia_driver.sh

./install_tmux_conf.sh
./install_conda.sh
./upgrade_swap_file.sh
./setup_nfs_mounts.sh

./setup_upsampling.sh
```

# Regular maintenance

```bash
./update_apt.sh
./update_conda.sh
./reboot.sh
./check_nvidia_driver.sh
./update_dataset.sh
./check_training_data.sh
```

# Upsampling model scripts setup

```bash
./setup_upsampling.sh
```

```bash
./update_repo.sh
```
