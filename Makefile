install-roles:
	ansible-galaxy install -r requirements.yaml

setup:
	ansible-playbook ./ansible/playbook.yaml -i ./ansible/inventory.ini