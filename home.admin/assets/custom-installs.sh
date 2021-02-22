#!/bin/bash

# This script runs with sudo rights after an update/recovery from a fresh sd card.
# This is the place to put all the install commands, cronjobs or editing of system configs 
# for your personal modifications of RaspiBlitz

# note: use absolute paths if you point to specific files

#echo "There are no custom user installs so far."


sudo bash
echo '' >> /etc/tor/torrc
echo '# Hidden Service for SSH via Tor' >> /etc/tor/torrc
echo HiddenServiceDir /mnt/hdd/tor/sshd/' >> /etc/tor/torrc
echo HiddenServiceVersion 3' >> /etc/tor/torrc
echo HiddenServicePort 22 127.0.0.1:22' >> /etc/tor/torrc
systemctl restart tor
exit
