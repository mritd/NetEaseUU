#!/usr/bin/env bash

PROFILE="generic"

PACKAGES="-firewall -odhcp6c -odhcpd-ipv6only -ppp -ppp-mod-pppoe ca-certificates kmod-tun open-vm-tools"

FILES="files"

DISABLED_SERVICES=""

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
