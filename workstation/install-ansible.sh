#!/bin/bash

txtblu='\033[0;34m'
txtcyn='\033[0;36m'
txtgrn='\033[0;32m'
txtred='\033[0;31m'
txtrst='\033[0m'

if [[ "$EUID" = 0 ]]; then
    echo -e "${txtblu}script running as root${txtrst}"
else
    echo -e "${txtred}sudo privilege is required to run this script${txtrst}"
    exit 1
fi

echo -e "${txtcyn}[1]${txtgrn} adding ansible's package archive${txtrst}"
add-apt-repository ppa:ansible/ansible -y >> /dev/null

echo -e "${txtcyn}[2]${txtgrn} updating package cache${txtrst}"
echo -e "${txtcyn}[2.1]${txtblu} apt update${txtrst}"
apt-get update -y
echo -e "${txtcyn}[2.2]${txtblu} apt upgrade${txtrst}"
apt-get upgrade -y

echo -e "${txtcyn}[3]${txtgrn} installing python 3.10${txtrst}"
apt-get install python3.10 -y >> /dev/null

echo -e "${txtblu}installed python version:${txtrst}"
python3 --version

echo -e "${txtcyn}[4]${txtgrn} installing ansible${txtrst}"
apt-get install ansible -y >> /dev/null

echo -e "${txtblu}ansible installed${txtrst}"
ansible --version