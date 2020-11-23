#!/bin/bash -e

for conn in dhcp static; do
    install -m 600 files/${conn}.nmconnection ${ROOTFS_DIR}/etc/NetworkManager/system-connections/
done

install -m 600 files/comitup.conf ${ROOTFS_DIR}/etc/
