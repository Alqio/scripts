#!/bin/bash

sudo apt install -y build-essential git libssl-dev libelf-dev bison flex zstd dwarves


KERNEL_VERSION=5.15.70
RT_VERSION=$KERNEL_VERSION-rt50

xz -cd linux-KERNEL_VERSION.tar.xz | tar xvf -
cd linux-KERNEL_VERSION
xzcat ../patch-RT_VERSION.patch.xz | patch -p1

 cp /boot/config-5.15.0-46-generic .config

 make menuconfig

# sudo apt install flex bison

sed -i .config 

sed -i -e 's/CONFIG_SYSTEM_TRUSTED_KEYS="debian/canonical-certs.pem"/CONFIG_SYSTEM_TRUSTED_KEYS=""/' .config

make -j12 deb-pkg

#sudo make modules_install -j12
#sudo make install -j12



# sudo dpkg -i ../linux-headers-5.4.143-rt64-rc2_5.4.143-rt64-rc2-1_amd64.deb ../linux-image-5.4.143-rt64-rc2_5.4.143-rt64-rc2-1_amd64.deb ../linux-libc-dev_5.4.143-rt64-rc2-1_amd64.deb