#!/bin/bash
#Echoing all IP's into hosts file
sudo echo "192.168.0.79	kubernetes-master" >> /etc/hosts
sudo echo "192.168.0.96 kubernetes-minion1" >> /etc/hosts
sudo echo "192.168.0.97 kubernetes-minion2" >> /etc/hosts
sudo echo "192.168.0.98 kubernetes-minion3" >> /etc/hosts
sudo echo "192.168.0.99 control" >> /etc/hosts
