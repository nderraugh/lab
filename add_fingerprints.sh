#!/bin/zsh

ssh-keyscan -t ecdsa 192.168.0.60 >> ~/.ssh/known_hosts
ssh-keyscan -t ecdsa 192.168.0.61 >> ~/.ssh/known_hosts
ssh-keyscan -t ecdsa 192.168.0.62 >> ~/.ssh/known_hosts
ssh-keyscan -t ecdsa 192.168.0.63 >> ~/.ssh/known_hosts
