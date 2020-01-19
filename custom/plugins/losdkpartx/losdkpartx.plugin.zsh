losdkpartx() (
  dev="/dev/mapper/loop$1"
  for part in "$dev"?*; do
    if [ "$part" = "${dev}p*" ]; then
      part="${dev}"
    fi
    dst="/mnt/$(basename "$part")"
    sudo umount "$dst"
  done
  sudo kpartx -d "$dev"
)
