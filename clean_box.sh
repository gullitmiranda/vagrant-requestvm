#!/bin/sh
cat - << EOWARNING
WARNING: This script will fil up your left over disk space.

DO NOT RUN THIS WHEN YOUR VIRTUAL HD IS RAW!!!!!!

You should NOT do this on a running system.
This is purely for making vagrant boxes damn small.

Press Ctrl+C within the next 10 seconds if you want to abort!!

EOWARNING
sleep 10;

# Removing leftover leases and persistent rules
rm -f /var/lib/dhcp3/*

# Make sure Udev doesn't block our network, see: http://6.ptmc.org/?p=164
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

# Remove any temporary work files, including the postinstall.sh script
rm -f /home/${account}/{*.iso,postinstall*.sh}

echo 'Cleanup bash history'
unset HISTFILE
[ -f /root/.bash_history ] && rm /root/.bash_history
[-f /home/vagrant/.bash_history ] && rm /home/vagrant/.bash_history

echo 'Cleanup log files'
find /var/log -type f | while read f; do echo -ne '' > $f; done;

echo 'Whiteout root'
count=`df --sync -kP / | tail -n1  | awk -F ' ' '{print $4}'`;
let count--
dd if=/dev/zero of=/tmp/whitespace bs=1024 count=$count;
rm /tmp/whitespace;

echo 'Whiteout /boot'
count=`df --sync -kP /boot | tail -n1 | awk -F ' ' '{print $4}'`;
let count--
dd if=/dev/zero of=/boot/whitespace bs=1024 count=$count;
rm /boot/whitespace;

### Compress Image Size

# Zero out the free space to save space in the final image
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

swappart=`cat /proc/swaps | tail -n1 | awk -F ' ' '{print $1}'`
swapoff $swappart;
dd if=/dev/zero of=$swappart;
mkswap $swappart;
swapon $swappart;
