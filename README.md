# Open Build System scripts for NAXSI
This repository contains maintenance scripts of https://build.opensuse.org/package/show/home:Manami:nginx-modules/nginx-module-naxsi

The original source repository of NAXSI is https://github.com/wargio/naxsi

## How to use
### Clone NAXSI(First only)

```bash
git clone --recurse-submodules https://github.com/wargio/naxsi.git
```

### Update Version

```
vim nginx-module-naxsi.spec # Modify Version
osc add nginx-module-naxsi.spec
./update_version.sh version
# For Example, ./update_version.sh 1.5
# ./update_version.sh will commit files
```
