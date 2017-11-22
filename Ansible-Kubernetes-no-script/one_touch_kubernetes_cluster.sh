#!/bin/bash

#Prepare hosts for ansible
#Ensure hosts match to inventory file
#Ensure hosts file is updated on control machine
#You will be asked first time for the password for the SSH connection. We recomend to use same password for all hosts

ansible-playbook playbooks/prepare-ansible-target.yml -k

ansible-playbook kubernetes.yml
