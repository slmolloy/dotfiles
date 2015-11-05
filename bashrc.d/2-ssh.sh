#!/usr/bin/env bash

if ! ssh-add -l | grep -e "\/home\/$USER\/\.ssh\/id_rsa" >/dev/null
then
    ssh-add /home/$USER/.ssh/id_rsa
fi
