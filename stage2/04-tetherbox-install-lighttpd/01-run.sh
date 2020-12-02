#!/bin/bash -e

# add a default homepage
install -m 644 files/index.html ${ROOTFS_DIR}/var/www/html/

# and disable the service, so comitup can manage it
rm ${ROOTFS_DIR}/etc/systemd/system/multi-user.target.wants/lighttpd.service 

