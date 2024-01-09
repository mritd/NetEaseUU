#!/usr/bin/env bash

PROFILE="generic"

# qemu-ga?
PACKAGES="-odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe ca-certificates kmod-tun open-vm-tools"

FILES="files"

DISABLED_SERVICES="firewall"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
