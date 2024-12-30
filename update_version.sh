#!/bin/sh

## Before run,
## Edit nginx-module-naxsi.spec
## osc add nginx-module-naxsi.spec

cd naxsi
git pull
git switch --detach $1
git submodule update

cd ..
cp -r naxsi nginx-module-naxsi-$1
rm -rf nginx-module-naxsi-$1/.git*
tar cvaf nginx-module-naxsi-$1.tar.xz nginx-module-naxsi-$1
rm -rf nginx-module-naxsi-$1

osc remove *.tar.xz
osc add nginx-module-naxsi-$1.tar.xz
osc commit
