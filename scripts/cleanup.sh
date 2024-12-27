#!/bin/bash
# cleanup.sh: Removes Netdata and cleans up configurations

echo "Stopping and removing Netdata..."

# Stop Netdata
sudo systemctl stop netdata

# Uninstall Netdata
sudo rm -rf /etc/netdata /usr/share/netdata /var/lib/netdata /usr/libexec/netdata
sudo userdel netdata

# Remove temporary files
rm -f /tmp/testfile

echo "Netdata has been removed and the system is cleaned up."
