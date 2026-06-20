mkdir buildroot
cd buildroot

wget https://buildroot.org/downloads/buildroot-2026.02.2.tar.gz
tar -xf buildroot-2026.02.2.tar.gz --strip-components=1

cp -rf ../board/* board
cp -rf ../boot/* boot
cp -rf ../configs/* configs
cp -rf ../fs/* fs
cp -rf ../chochodile.py chochodile.py

make chochodile_x86_64_defconfig
make