# Deploy project

### Hexlet tests and linter status:
[![Actions Status](https://github.com/QQpy3ko/devops-for-programmers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/QQpy3ko/devops-for-programmers-project-76/actions)

## The app link
[Redmine](https://www.british-isles.ru)

## Requirements

- Docker

- Make

- Ansible


## Instructions

1. Clone repo
2. ```cd repo```
3. Install Ansible Galaxy roles and collections
   ```make install-roles```
4. Make setup on remote servers
   ```make setup```
5. Deploy app on remote servers
   ```make deploy```

Stop all the applications
   ```make stop-app```

Remove unused containers on tremote servers
   ```delete-app```