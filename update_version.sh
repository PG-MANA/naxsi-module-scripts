#!/bin/sh

## Before run,
## Edit nginx-module-naxsi.spec
## osc add nginx-module-naxsi.spec
## osc remove nginx-module-naxsi-$(old_ver).tar.xz

cd naxsi
git checkout $1
git submodule update

cd ..
cp -r naxsi nginx-module-naxsi-$1
rm -rf nginx-module-naxsi-$1/.git*
tar cvf nginx-module-naxsi-$1.tar.xz nginx-module-naxsi-$1
rm -rf nginx-module-naxsi-$1

osc add nginx-module-naxsi-$1.tar.xz
osc commit
