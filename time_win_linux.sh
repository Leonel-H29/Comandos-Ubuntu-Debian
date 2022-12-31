#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get autoremove
sudo apt-get update
sudo timedatectl set-local-rtc 1

sudo reboot

