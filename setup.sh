#!/bin/bash

ansible-playbook -e @secrets.enc --ask-vault-pass homelab.yml