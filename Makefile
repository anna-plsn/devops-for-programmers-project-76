install-roles:
	ansible-galaxy install -r requirements.yml

create:
	ansible-playbook --check playbook.yml -i inventory.ini
