#! /bin/sh

echo "KernelOS Build Tools script made by Minionguyjpro and Alphe"
# Check for root priviliges
if [ `id -u` != 0 ]
then
   echo "Please run as root (or with sudo)!"
   exit
fi
# Install all needed programs, including: GCC i386 libraries, Xorriso and GNU Mtools
apt-get update
if [ $? -eq 0 ]
then
   echo "APT repositories updated successfully."
else
   echo "Updating APT repositories failed. Check the above output for the error."
fi
apt-get install gcc-multilib -y
if [ $? -eq 0 ]
then
   echo "GCC i386 libraries installed successfully."
else
   echo "Installing GCC i386 libraries failed. Check the above output for the error."
fi
apt-get install grub-pc -y
if [ $? -eq 0 ]
then
   echo "GRUB installed successfully."
else
   echo "Installing GRUB failed. Check the above output for the error."
fi
apt-get install xorriso -y
if [ $? -eq 0 ]
then
   echo "Xorriso installed successfully."
else
   echo "Installing Xorriso failed. Check the above output for the error."
fi
apt-get install mtools -y
if [ $? -eq 0 ]
then
   echo "GNU Mtools installed successfully."
else
   echo "Installing GNU Mtools failed. Check the above output for the error."
fi
