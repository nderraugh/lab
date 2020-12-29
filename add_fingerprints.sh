#!/bin/zsh

ssh-keyscan -t ecdsa 192.168.12.60 >> ~/.ssh/known_hosts
ssh-keyscan -t ecdsa 192.168.12.61 >> ~/.ssh/known_hosts
ssh-keyscan -t ecdsa 192.168.12.62 >> ~/.ssh/known_hosts
ssh-keyscan -t ecdsa 192.168.12.63 >> ~/.ssh/known_hosts
