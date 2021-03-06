#!/bin/bash
set -x
sudo modprobe zlib

if [ "$1" == "nb" ]
then
    sudo insmod /home/bill/ft-index/ftfs_fs/ftfs.ko
elif [ "$1" == "sb" ]
then
    sudo insmod /home/bill/ft-index/ftfs/ftfs.ko \
	sb_dev=/dev/hdb \
	sb_fstype=ext4 \
	ftfs_test_filename=test.file
elif [ "$1" == "fs" ]
then
    sudo insmod /home/bill/ft-index/filesystem/ftfs.ko \
	sb_dev=/dev/hdb \
	sb_fstype=ext4
else
    echo "($1) Please specify nb, sb, or fs"
fi
