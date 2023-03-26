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
./ssh_make_known.sh
```
