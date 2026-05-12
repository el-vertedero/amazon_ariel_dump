#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:6434816:57468bcb636194aa514fd4a4142c6bf3c74bd38c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:5976064:686e259daf6a68f5e49b4b7087ed1ccacac923f5 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 57468bcb636194aa514fd4a4142c6bf3c74bd38c 6434816 686e259daf6a68f5e49b4b7087ed1ccacac923f5:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
