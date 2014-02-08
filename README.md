This is an Ansible playbook for setting up MPD on a Raspberry Pi running Arch Linux ARM.

## Steps ##

1. install [Arch Linux ARM](http://archlinuxarm.org/platforms/armv6/raspberry-pi) to your Raspberry Pi and boot it.
2. review the files in this repository for configuration details (I haven't set it up to be verify flexible).
   specifically:
    - change the hostname (from 'erich')
    - change the wifi SSID and password
    - change the fstab to mount the music directory correctly for your setup
    - change the MPD music directory
3. `./setup.sh`

This assumes that your network has functioning internal DNS; if it doesn't, add the IP address of your Raspberry Pi to your hosts file with the hostname "alarmpi" (the default set up by Arch), and with your desired final hostname.
