#!/bin/bash

sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.8.11
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.8.12
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.8.13

sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.8.14
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.8.15
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.8.16