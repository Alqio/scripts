#!/bin/bash


mkdir -p kernels

KERNEL_VERSION=5.15.70
RT_VERSION=$KERNEL_VERSION-rt50

wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-$KERNEL_VERSION.tar.xz
wget https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.15/patch-RT_VERSION.patch.gz # note 5.15 in the middle

