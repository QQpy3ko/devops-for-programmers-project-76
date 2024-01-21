install-roles:
	ansible-galaxy install -r ./ansible/requirements.yaml

check-setup:
	ansible-playbook --check ./ansible/setup.yaml -i ./ansible/inventory.ini --vault-password-file ./vault_pass.txt

setup:
	ansible-playbook ./ansible/setup.yaml -i ./ansible/inventory.ini --vault-password-file ./vault_pass.txt

check-deploy:
	ansible-playbook --check ./playbook.yaml -i ./ansible/inventory.ini --vault-password-file ./vault_pass.txt

deploy:
	ansible-playbook ./playbook.yaml -i ./ansible/inventory.ini --vault-password-file ./vault_pass.txt

deploy-server1:
	ansible-playbook --limit server1 ./playbook.yaml -i ./ansible/inventory.ini --vault-password-file ./vault_pass.txt

deploy-server2:
	ansible-playbook --limit server2 ./playbook.yaml -i ./ansible/inventory.ini --vault-password-file ./vault_pass.txt

stop-app:
	ansible-playbook ./ansible/stop_app.yaml -i ./ansible/inventory.ini --vault-password-file ./vault_pass.txt

delete-app:
	ansible-playbook ./ansible/remove_containers.yaml -i ./ansible/inventory.ini --vault-password-file ./vault_pass.txt

vault-pass:	
	echo 'WRITE_YOUR_PASS_HERE' > ./ansible/vault_pass.txt

vault-file:
	ansible-vault create --vault-password-file ./vault_pass.txt ./ansible/group_vars/webservers/vault.yaml

encrypt:
	ansible-vault encrypt --vault-password-file ./vault_pass.txt ./ansible/group_vars/webservers/vault.yaml

decrypt:
	ansible-vault decrypt --vault-password-file ./vault_pass.txt ./ansible/group_vars/webservers/vault.yaml