#!/usr/bin/env bash
#
# Remove all cloud-init run-time data and logs
#
# The removal completely resets cloud-init. When the instance is next
# started cloud-init will run all configured modules as if running for the
# first time
set -o errexit

# cloud-init: Remove data generated by cloud-init by removing:
#     * /var/lib/cloud/*
#     * /var/log/cloud-init.log
echo "*** Removing any cloud-init data"

rm -rf /var/lib/cloud/*
rm -f /var/log/cloud-init.log

exit 0
