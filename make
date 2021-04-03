#!/usr/bin/env bash

set -ex

cleanup() {
    rm -rf "$tmp"
}

tmp="$(mktemp -d)"
chmod 755 "$tmp"
trap cleanup EXIT

codename='avoid'
username='user'
password='avoid'
repository='https://alpha.de.repo.voidlinux.org/current'

original_dir="$(pwd)/"

mkdir -p out/

# build req
xbps-install --sync --yes --memory-sync --automatic --repository "${repository}" \
    bash \
    dosfstools \
    e2fsprogs \
    git \
    glibc \
    kmod \
    liblz4 \
    lzo \
    make \
    qemu-user-static

git clone https://github.com/void-linux/void-mklive "$tmp"/avoid-mklive/

# customize avoid-mklive
rm $tmp/avoid-mklive/data/splash.png

cd "$tmp/avoid-mklive/"
cp ${original_dir}res/services.sh dracut/vmklive/services.sh
grep -rl 'void-live' . | xargs sed -i "s/void-live/${codename}.localhost/g"
grep -rl 'VOID_LIVE' . | xargs sed -i 's/VOID_LIVE/avoid_LIVE/g'
grep -rl ':voidlinux' . | xargs sed -i "s/\:voidlinux/\:${password}/g"
grep -rl 'audio,video,wheel' . | xargs sed -i 's/audio,video,wheel/audio,video,wheel,kvm/g'

arch='x86_64'
date="$(date +%Y%m%d)"
img="${codename}-live-${arch}-${date}.iso"
pkgs="
base-system
grub
grub-i386-efi
grub-x86_64-efi
dbus
dialog
linux-firmware
wireless_tools
xorg-minimal
xorg-input-drivers
xorg-fonts
ipafont-fonts-otf
wmname
xprop
picom
xsetroot
kitty
fish-shell
vim-huge
htop
git
wget
curl
dmenu
rofi
jq
rofi-emoji
noto-fonts-emoji
xclip
xsel
imake
libXt-devel
ranger
ueberzug
ffmpeg
ffmpegthumbnailer
poppler
unzip
unrar
p7zip
unp
mpv
papirus-icon-theme
papirus-folders
xrdb
arandr
redshift
alsa-utils
alsa-plugins-pulseaudio
pulsemixer
cmus
sxiv
flameshot
ImageMagick
rtorrent
fortune-mod
gnuchess
nudoku
vitetris
nSnake
pong-command
"

enabled_services='acpid,agetty-tty1,dbus,udevd,dhcpcd,wpa_supplicant'

make
./mklive.sh \
    -C "live.user=${username} live.shell=/usr/bin/bash net.ifnames=0 live.services=${enabled_services}" \
    -I "${original_dir}chroot" \
    -T "${codename}" \
    -a "${arch}" \
    -o "${img}" \
    -p "$pkgs" \
    -r "${repository}" \
    -r "${repository}/nonfree"

cd -
mv "$tmp"/avoid-mklive/*.iso out/
