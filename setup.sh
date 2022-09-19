#!/bin/sh

#echo "This script is not ready for usage yet!"
#exit 2

read -p "Hostname: " hostname
hostnamectl hostname $hostname

mkdir /tmp/work

work=/tmp/work

if [ `whoami` != root ]; then
    echo "You must run this as root!"
    exit 1
fi

cat etc/dnf/dnf.conf >> /etc/dnf/dnf.conf

dnf upgrade
flatpak update

#sudo $USERNAME source ./dconf.sh

dnf install -y vim

dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y com.visualstudio.code
flatpak install -y com.jetbrains.IntelliJ-IDEA-Community
flatpak install -y com.slack.Slack
flatpak install -y com.axosoft.gitkraken
dnf install google-chrome-stable
dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
dnf install lame\* --exclude=lame-devel
dnf group upgrade --with-optional Multimedia

# TODO Firefox config


dnf install -y gnome-tweaks

flatpak install -y com.mattjakeman.ExtensionManager

dnf install gnome-shell-extension-drive-menu
