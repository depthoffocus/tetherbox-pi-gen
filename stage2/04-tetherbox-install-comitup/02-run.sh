#!/bin/bash -e

for conn in dhcp static; do
    install -m 600 files/${conn}.nmconnection ${ROOTFS_DIR}/etc/NetworkManager/system-connections/
done

install -m 600 files/comitup.conf ${ROOTFS_DIR}/etc/
perl -spi -e 's/%TETHERBOX_AP_PASSWORD%/$ENV{FIRST_USER_PASS}/' ${ROOTFS_DIR}/etc/comitup.conf 
