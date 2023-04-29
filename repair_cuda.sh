echo "Removing CUDA..."

ansible-playbook playbooks/remove_cuda.yml

echo "Reinstalling CUDA..."

ansible-playbook playbooks/install_cuda.yml
