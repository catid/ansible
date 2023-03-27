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

4. Associate with all the hosts

```bash
./install_ssh_keys.sh
```

# Setup hosts

```bash
./update_apt.sh
./install_cuda.sh
./reboot.sh
./check_nvidia_driver.sh

./install_conda.sh
./upgrade_swap_file.sh
./setup_nfs_mounts.sh
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
