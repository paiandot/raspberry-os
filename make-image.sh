#!/bin/sh
disk_path="/dev/disk2" 
image="~/Download/2018-11-13-raspbian-stretch-full.img"

#format SD card
diskutil eraseDisk FAT32 none MBRFormat ${disk_path}

#setting partition 
diskutil partitionDisk ${disk_path} 1 MBRFormat "MS-DOS FAT32" EDISON 805.30M

#unmount disk
diskutil unmountDisk ${disk_path} 

#install os
sudo dd bs=1m if=${image} of=${disk_path}
