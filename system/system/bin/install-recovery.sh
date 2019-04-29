#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c26da0f978ae428e46a02671fc1952e6404917d0; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:1394b5a9ab45dc7c1184c52c5548d51d05828e98 EMMC:/dev/block/bootdevice/by-name/recovery c26da0f978ae428e46a02671fc1952e6404917d0 67108864 1394b5a9ab45dc7c1184c52c5548d51d05828e98:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
