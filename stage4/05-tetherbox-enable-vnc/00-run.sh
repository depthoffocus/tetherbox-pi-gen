#!/bin/bash -e

on_chroot << EOF
	raspi-config nonint do_vnc 0
	echo "$FIRST_USER_PASS" | vncpasswd -service
	echo "Authentication=VncAuth" > /etc/vnc/config.d/common.custom
EOF

install -m 600 files/config.txt "${ROOTFS_DIR}/boot/"

