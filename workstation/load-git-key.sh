#!/bin/bash

# NB! skript tuleb source'da, mitte jooksutada skriptina. Ehk ette tuleb panna '.'
# Näide '. ./load-git-key.sh'

# start ssh agent
eval `ssh-agent -s`

# set required file permissions
chmod 700 id_rsa

# add the git ssh key
ssh-add id_rsa