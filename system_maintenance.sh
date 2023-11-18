#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Upgrade all packages
echo "Upgrading installed packages..."
sudo apt-get upgrade -y

# Dist-Upgrade for handling changed dependencies, new and obsolete packages
echo "Performing dist-upgrade..."
sudo apt-get dist-upgrade -y

# Remove unused packages and their configs
echo "Removing unnecessary packages and cleaning up..."
sudo apt-get autoremove -y
sudo apt-get autoclean
sudo apt-get clean

# Remove old kernels (keep the current one and one backup)
echo "Removing old kernels..."
sudo apt-get purge $(dpkg --list | grep -P -o "linux-(headers|image|modules)-\d+\.\d+\.\d+-\d+" | grep -v $(uname -r | cut -d"-" -f1,2))

# Additional Recommendations:
# - Check for broken dependencies
echo "Checking for broken dependencies..."
sudo apt-get check

# - Remove orphaned packages
echo "Removing orphaned packages..."
sudo deborphan | xargs sudo apt-get -y remove --purge

# - Clean up local repository of retrieved package files
echo "Cleaning up local repository..."
sudo apt-get autoclean

echo "System maintenance complete!"

# Optional: Reboot the system
# read -p "Do you want to reboot now? (y/n) " answer
# case ${answer:0:1} in
#     y|Y )
#         echo "Rebooting..."
#         sudo reboot
#     ;;
#     * )
#         echo "Reboot skipped. Please reboot manually later."
#     ;;
# esac
