#!/bin/sh

echo "Connect ethernet and boot the device."
echo "The default root password is 'root'."

# install python and set up SSH pubkey access
ansible-playbook --ask-pass ansible.yml

# set up the hostname and wifi
ansible-playbook network.yml

# reboot the system so the new hostname takes effect
ssh root@alarmpi reboot

echo "Waiting 30s for reboot..."
sleep 30

# FIXME: this will fail unless the reboot & network has succeeded.
ansible-playbook erich.yml
