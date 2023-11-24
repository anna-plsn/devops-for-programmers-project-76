VAULT_PASSWORD_FILE = $(CURDIR)/vault_password.txt

deploy:
	ANSIBLE_VAULT_PASSWORD_FILE=$(VAULT_PASSWORD_FILE) ansible-playbook -i inventory.ini playbook.yml

requirements:
	ansible-galaxy install -r requirements.yml --force

encrypt_vault:
	ansible-vault encrypt --vault-password-file=$(VAULT_PASSWORD_FILE) $(CURDIR)/group_vars/webservers/vault.yml

decrypt_vault:
	ansible-vault decrypt --vault-password-file=$(VAULT_PASSWORD_FILE) $(CURDIR)/group_vars/webservers/vault.yml

edit_vault:
	ansible-vault edit --vault-password-file=$(VAULT_PASSWORD_FILE) $(CURDIR)/group_vars/webservers/vault.yml

view_vault:
	ansible-vault view --vault-password-file=$(VAULT_PASSWORD_FILE) $(CURDIR)/group_vars/webservers/vault.yml

update_cache:
	ANSIBLE_VAULT_PASSWORD_FILE=$(VAULT_PASSWORD_FILE) ansible-playbook -i inventory.ini playbook.yml --tags="update cache"

install_pip:
	ANSIBLE_VAULT_PASSWORD_FILE=$(VAULT_PASSWORD_FILE) ansible-playbook -i inventory.ini playbook.yml --tags="install_pip"

install_docker:
	ANSIBLE_VAULT_PASSWORD_FILE=$(VAULT_PASSWORD_FILE) ansible-playbook -i inventory.ini playbook.yml --tags="install_docker"

configure_datadog:
	ANSIBLE_VAULT_PASSWORD_FILE=$(VAULT_PASSWORD_FILE) ansible-playbook -i inventory.ini playbook.yml --tags="configure_datadog"

deploy_redmine:
	ANSIBLE_VAULT_PASSWORD_FILE=$(VAULT_PASSWORD_FILE) ansible-playbook -i inventory.ini playbook.yml --tags="deploy_redmine"