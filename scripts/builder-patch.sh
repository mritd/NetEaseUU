#!/usr/bin/env bash

echo "Start Builder Patch !"
echo "Current Path: $PWD"

cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-x86-64.Linux-x86_64 || exit

# Update grub title
sed -i 's/CONFIG_GRUB_TITLE=.*/CONFIG_GRUB_TITLE=NetEaseUU/' .config

# Force opkg to overwrite files
#sed -i "s/install \$(BUILD_PACKAGES)/install \$(BUILD_PACKAGES) --force-overwrite/" Makefile

# Not generate squashfs images
sed -i "s/CONFIG_TARGET_ROOTFS_SQUASHFS=y/# CONFIG_TARGET_ROOTFS_SQUASHFS is not set/" .config

# Not generate ISO images for it is too big
sed -i "s/CONFIG_ISO_IMAGES=y/# CONFIG_ISO_IMAGES is not set/" .config

# Change image size
sed -i 's/CONFIG_TARGET_KERNEL_PARTSIZE=.*/CONFIG_TARGET_KERNEL_PARTSIZE=16/' .config
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=.*/CONFIG_TARGET_ROOTFS_PARTSIZE=48/' .config

# Not generate VHDX images
sed -i "s/CONFIG_VHDX_IMAGES=y/# CONFIG_VHDX_IMAGES is not set/" .config
