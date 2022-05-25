#!/bin/bash
apt update
apt dist-upgrade -y
apt install -y ansible

ansible-pull -U https://github.com/gholami-mohammad/setup-dev-env.git