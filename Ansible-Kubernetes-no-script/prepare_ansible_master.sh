#!/bin/bash

#Install ansible and update
sudo yum install epel-release -y 
sudo yum install ansible git vim -y 
sudo yum update -y

#Create ansible user and give ansible sudo access
sudo useradd ansible
sudo mkdir /home/ansible
sudo chown ansible:ansible /home/ansible
sudo echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

#Copy everything to ansible's user home directory
mkdir /home/ansible/workspace && cp -r * /home/ansible/workspace && chown -R ansible:ansible /home/ansible/*
if [ $? != 0 ] then:
echo "Please verify that ansible user exists and folder not already created"
exit
fi



su - ansible
cd /home/ansible/workspace
cat /dev/zero | ssh-keygen -q -N ""

echo "Host *" >> /home/ansible/workspace/.ssh/config
echo "        StrictHostKeyChecking no" >> /home/ansible/workspace/.ssh/config
chmod 400 /home/ansible/workspace/.ssh/config

echo "Preparation for ansible use is finished \
Please use one touch script to set up the cluster"
