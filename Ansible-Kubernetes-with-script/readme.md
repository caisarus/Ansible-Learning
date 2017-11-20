On Ansible controller
#Used on Ubuntu
#On controller
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y

#Centos
sudo yum install epel-release -y 
sudo yum install ansible -y 
sudo yum update -y
ssh-keygen
#disable host key check


sudo useradd ansible
sudo mkdir /home/ansible
sudo chown ansible:ansible /home/ansible
echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
sudo usermod -s /bin/bash ansible #to access bash directly
#/etc/ansible/ansible.cfg for configs. You can create a local ansible.cfg file in which you can define where the inventory file lives



ssh-keygen

Disable host verification for SSH
in your ~/.ssh/config (if this file doesn't exist, just create it):

Host *
    StrictHostKeyChecking no
This will turn it off for all hosts you connect to. You can replace the * with a hostname pattern if you only want it to apply to some hosts.

Make sure the permissions on the file restrict access to yourself only:

sudo chmod 400 ~/.ssh/config

First run prepare-ansible-target.yml

run ansible-galaxy init role_name
