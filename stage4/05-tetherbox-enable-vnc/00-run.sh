#!/bin/bash -e

on_chroot << EOF
	raspi-config nonint do_vnc 0
	raspi-config nonint do_resolution 2 82
EOF
