#!/bin/bash

# start ssh agent
eval `ssh-agent -s`

# set required file permissions
chmod 700 id_rsa

# add the git ssh key
ssh-add id_rsa