#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:62d3e33bd3c1219ee58b6a38b0e4b2207e6ff8b1; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:9988b43870c86574d861d5b5ba7013edc93fdfc5 EMMC:/dev/block/bootdevice/by-name/recovery 62d3e33bd3c1219ee58b6a38b0e4b2207e6ff8b1 67108864 9988b43870c86574d861d5b5ba7013edc93fdfc5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
