# Деплой Docker-образов с помощью Ansible

### Hexlet tests and linter status:
[![Actions Status](https://github.com/anna-plsn/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/anna-plsn/devops-for-programmers-project-76/actions)

## Описание

В этом проекте демонстрируется, как использовать Ansible для развертывания образов Docker и управления развертыванием приложения Redmine.

## Требования к целевой машине

- [Python 3.x](https://www.python.org/downloads/)
- [Pipinstallation](https://pip.pypa.io/en/stable/installing/) 
- [Docker](https://docs.docker.com/get-docker/)
- [Make](https://www.gnu.org/software/make/)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Роли Ansible

- **datadog.datadog**:
Для интеграции с Datadog необходимо установить необходимые переменные среды и ключи. В этом проекте используется Ansible Vault для безопасного управления конфиденциальной информацией.
1. Создайте файл с именем `vault.yml` в каталоге `~/devops-for-programmers-project-76/group_vars/webservers`.
2. Сохраните ваши конфиденциальные переменные в этом файле. Например:

```yaml
vault_vars:
  datadog_api_key: "your-datadog-api-key"
  app_key: "your-app-key"
```
- **deploy_redmine**:

Для безопасного управления конфиденциальной информацией, связанной с развертыванием Redmine, вы можете добавить необходимые данные в файл `vault.yml`. Пример того, как включить эти переменные в файл `vault.yml` для роли `deploy_redmine`:
```yaml
redmine_env_variables:
  REDMINE_DB_USERNAME: "your-db-username"
  REDMINE_DB_PASSWORD: "your-db-password"
```

## Сборка

### Step 1: Установите роли Ansible Galaxy

```make requirements```

### Step 2: Добавьте необходимые сервера в файл inventory.ini

```nano inventory.ini```

### Step 3: Запуск

```make deploy```

## Развернутое приложение

- https://plaksina.space/


