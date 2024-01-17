install-roles:
	ansible-galaxy install -r requirements.yaml

setup:
	ansible-playbook ./ansible/setup.yaml -i ./ansible/inventory.ini

deploy:
	ansible-playbook ./ansible/playbook.yaml -i ./ansible/inventory.ini

stop-app:
	ansible-playbook ./ansible/stop_app.yaml -i ./ansible/inventory.ini

delete-app:
		ansible-playbook ./ansible/remove_containers.yaml -i ./ansible/inventory.ini
