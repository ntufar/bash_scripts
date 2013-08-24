#!/bin/sh
# Various QEMU configurations

# FreeBSD
qemu-system-x86_64  -cdrom ~/Downloads/FreeBSD-9.1-RELEASE-amd64-bootonly.iso -hda bsdroot.img -boot d -netdev user,id=mynet0,net=192.168.76.0/24,dhcpstart=192.168.76.9

# Debugging Linux Kernel
qemu-system-x86_64 fedora.qcow -kernel arch/x86/boot/bzImage -append "root=/dev/sda rdinit=/bin/bash"  -initrd initrd.img
