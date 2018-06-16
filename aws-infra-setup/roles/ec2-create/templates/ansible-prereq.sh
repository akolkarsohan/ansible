#!/bin/bash
yum update -y
yum install epel-release -y
yum install ansible -y
useradd sohan
passwd sohan
usermod -aG wheel sohan
