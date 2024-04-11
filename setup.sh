#!/bin/bash

ANSIBLE_VAULT_PASSWORD_FILE=.vault_password.txt ansible-playbook -e @secrets.enc homelab.yml