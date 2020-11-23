#!/bin/bash -e

VNC_PASSWD="ch33se!"

on_chroot << EOF
	raspi-config nonint do_vnc 0
	echo "$VNC_PASSWD" | vncpasswd -service
	echo "Authentication=VncAuth" > /etc/vnc/config.d/common.custom
EOF

install -m 600 files/config.txt "${ROOTFS_DIR}/boot/"

