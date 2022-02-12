#!/usr/bin/env bash
# shellcheck disable=SC2034

AOXVER="v0_1"

iso_name="aoxlinux"
iso_label="Aox_Linux_$(date +%Y%m)_${AOXVER}"
iso_publisher="Aox Linux <https://github.com/olivaresa/aoxlinux/wiki>"
iso_application="Aox Linux Live CD/USB"
iso_version="$(date +%Y.%m.%d)_${AOXVER}"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/etc/gshadow"]="0:0:400"
  ["/usr/local/bin/i3blocks_contrib/"]="0:0:777"
  ["/usr/local/bin/fix-mirror"]="0:0:755"
)
