#!/usr/bin/env bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES="uhttpd luci-theme-bootstrap luci-i18n-base-zh-cn libustream-mbedtls ca-certificates kmod-tun open-vm-tools"

FILES="files"

DISABLED_SERVICES="firewall odhcpd"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
