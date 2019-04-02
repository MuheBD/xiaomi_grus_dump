#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:045e52d9a437abcceec1297681a732a6e6785e60; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:2db6547d8930199f5005a602244e9c10573c87da EMMC:/dev/block/bootdevice/by-name/recovery 045e52d9a437abcceec1297681a732a6e6785e60 67108864 2db6547d8930199f5005a602244e9c10573c87da:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
