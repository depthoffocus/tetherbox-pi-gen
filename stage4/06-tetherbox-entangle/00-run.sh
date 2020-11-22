#!/bin/bash -e

if [ -f "./ENTANGLE_VERSION_3" ]; then
echo "---- INSTALLING ENTANGLE 3 ---"
TAR="entangle-3.0-build.tar.gz"
install -m 644 files/$TAR ${ROOTFS_DIR}/tmp

on_chroot << EOF
	apt-get update
	apt-get install -q -y libgexiv2-2 libraw19 libpeas-1.0.0
	cd /
	tar xvzf tmp/$TAR
	rm tmp/$TAR
	ldconfig -v 
EOF
else
echo "---- INSTALLING ENTANGLE 2 ---"
on_chroot << EOF
	apt-get update
	apt-get install -q -y entangle
EOF
fi      
