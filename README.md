# catid's ansible scripts

These are the scripts that I use to manage the worker nodes on my GPU clsuter.

## Setup

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

3. Create key files:

Store your servers' root password here:

```bash
echo "ansible_become_password: myrootpassword" > playbooks/sudo.yml
```

Store your HuggingFace auth token here:

```bash
echo "hftoken: hf_blah" > playbooks/hftoken.yml
```

4. Choose where dataset is stored

Edit the `update_dataset.sh` file to choose where the dataset lives.  By default it is under ~/dataset/ and lives on the `gpu4.lan` host.

The computer that stores the master copy of the dataset should clone this repo and run:

```bash
./install_ssh_keys.sh
```

This will install its SSH key on all the other machines so that it can copy files to them.

5. Automatically set up all servers

Before running these scripts make sure that the firewall has a reserved IP address for the server, and that the NAS has provided permission for the new server to connect.

Create SSH keys:

```bash
./install_ssh_keys.sh
./create_ssh_key_pair.sh
```

This will request the server login password at the start.

Watch the logs for the server's SSH public key and allow it in Github.

```bash
./full_setup.sh
```

At a certain point the computers will reboot and prompt for enrolling a MOK key for the Nvidia drivers if they are not set up yet.  After that point it should run unattended.

# Regular maintenance

```bash
./update_apt.sh
./update_conda.sh

./check_nvidia_driver.sh

# Optionally
./reboot.sh
```
