#!/bin/zsh

ssh-copy-id -i $HOME/.ssh/id_rsa.pub ubuntu@192.168.12.60
ssh-copy-id -i $HOME/.ssh/id_rsa.pub ubuntu@192.168.12.61
ssh-copy-id -i $HOME/.ssh/id_rsa.pub ubuntu@192.168.12.62
ssh-copy-id -i $HOME/.ssh/id_rsa.pub ubuntu@192.168.12.63