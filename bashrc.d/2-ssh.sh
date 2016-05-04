#!/usr/bin/env bash

if ! ssh-add -l | grep -e "$HOME\/\.ssh\/id_rsa" >/dev/null
then
    ssh-add $HOME/.ssh/id_rsa
fi
