install-roles:
	ansible-galaxy install -r requirements.yml

check-deploy:
	ansible-playbook --check playbook.yml -i inventory.ini --vault-password-file vault_pass.txt -vvv

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault_pass.txt

deploy-server1:
	ansible-playbook --limit server1 playbook.yml -i inventory.ini --vault-password-file vault_pass.txt

deploy-server2:
	ansible-playbook --limit server2 playbook.yml -i inventory.ini --vault-password-file vault_pass.txt

stop-app:
	ansible-playbook stop_app.yaml -i inventory.ini --vault-password-file vault_pass.txt

delete-app:
	ansible-playbook remove_containers.yaml -i inventory.ini --vault-password-file vault_pass.txt

vault-pass:	
	echo 'WRITE_YOUR_PASS_HERE' > vault_pass.txt

vault-file:
	ansible-vault create --encrypt-vault-id=default --vault-password-file vault_pass.txt ./group_vars/webservers/vault.yml

encrypt:
	ansible-vault encrypt ./group_vars/webservers/vault.yml

decrypt:
	ansible-vault decrypt ./group_vars/webservers/vault.yml