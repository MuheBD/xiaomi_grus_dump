#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c507cc84611f2fb833771cdce95fcc823fcd8791; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:71d3db0d3145cd594528c5bb2ae44735cf9a7678 EMMC:/dev/block/bootdevice/by-name/recovery c507cc84611f2fb833771cdce95fcc823fcd8791 67108864 71d3db0d3145cd594528c5bb2ae44735cf9a7678:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
