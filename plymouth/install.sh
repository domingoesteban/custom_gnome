#!/bin/bash

# Copy the available themes in the plymouth-themes path
sudo cp ./themes/* /lib/plymouth/themes 

# Install the themes
#TODO Improve this, do it automatically depending of the number of themes
sudo update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/robotio-head-logo/robotio-head-logo.plymouth 100
sudo update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/robotio-head-logo2/robotio-head-logo2.plymouth 100

# Open the configuration
sudo update-alternatives --config default.plymouth 

# (select simple from the list)
#TODO See how to make this in the script

# Generate a grub2 config file.
sudo update-grub2

# Generate an initramfs image
sudo update-initramfs -u
