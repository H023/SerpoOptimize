#!/bin/bash

# Check if the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run with sudo/root privileges."
  exit 1
fi

# Update the package list and install necessary tools
apt-get update
apt-get install -y preload powertop tlp

# Install and configure apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
sudo apt-get update
sudo apt-get -y install apt-fast

# Install zram-config for compressed swap in RAM
sudo apt-get -y install zram-config

# Install linux-tools-common for CPU performance tools
sudo apt-get -y install linux-tools-common

# Install specific Linux tools for kernel version 6.2.0-25-generic
sudo apt-get -y install linux-tools-6.2.0-25-generic linux-cloud-tools-6.2.0-25-generic

# Set CPU governor to performance mode
sudo cpupower frequency-set -g performance

# Copy tmp.mount file to /etc/systemd/system/
sudo cp -v /usr/share/systemd/tmp.mount /etc/systemd/system/

# Enable tmp.mount
sudo systemctl enable tmp.mount

# Run preload service
service preload start

# Enable and start tlp
systemctl enable tlp
systemctl start tlp

# Run powertop calibration for better power management
powertop --auto-tune

# Install prelink
sudo apt-get -y install prelink

# Run prelink to optimize libraries
sudo prelink -amR

# Clear cache and thumbnails
rm -rf ~/.cache/*
rm -rf ~/.thumbnails/*

# Clean up unnecessary packages and cache
sudo apt autoclean
sudo apt clean
sudo apt autoremove -y

# Add more scripts or commands here that you want to run to optimize performance
# For example:
# apt-get install -y htop   # Install htop for better system monitoring
# echo "vm.swappiness=10" >> /etc/sysctl.conf  # Adjust swappiness to improve memory management

# Final message
echo "Speed up scripts execution completed. Restart your computer and then begin using it and give us a feedback on wherever you downloaded this :) - hemoo023"

