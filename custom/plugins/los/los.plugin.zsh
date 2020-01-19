los() (
  echo losing
  img="$1"
  dev="$(sudo losetup --show -f -P "$img")"
  echo "$dev"
  for part in "$dev"?*; do
    if [ "$part" = "${dev}p*" ]; then
      part="${dev}"
    fi
    dst="/mnt/$(basename "$part")"
    echo "$dst"
    sudo mkdir -p "$dst"
    sudo mount "$part" "$dst"
  done
)
losd() (
  dev="/dev/loop$1"
  for part in "$dev"?*; do
    if [ "$part" = "${dev}p*" ]; then
      part="${dev}"
    fi
    dst="/mnt/$(basename "$part")"
    sudo umount "$dst"
  done
  sudo losetup -d "$dev"
)
