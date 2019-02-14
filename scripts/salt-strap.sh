#!/usr/bin/env bash


curl -L https://bootstrap.saltstack.com -o bootstrap_salt.sh
sudo sh bootstrap_salt.sh

sudo sed -i 's/\#file_client\:\ remote/file_client\:\ local/' /etc/salt/minion

sudo mkdir -p /srv/salt

sudo cp salt-states/* /srv/salt/

sudo salt-call --local state.apply -l info


