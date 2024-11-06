#!/bin/bash

TIMESTAMP="$(date +%Y%m%d%H%M%S)"

ANSIBLE_VAULT_PASSWORD_FILE=.vault_password.txt ANSIBLE_LOG_PATH=logs/ansible-$TIMESTAMP.log ansible-playbook -e @secrets.enc homelab.yml
