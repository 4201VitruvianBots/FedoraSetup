#!/bin/sh

echo "This script is not ready for usage yet!"
exit 2

mkdir /tmp/work

work=/tmp/work

if [ `whoami` != root ]; then
    echo "You must run this as root!"
    exit 1
fi

cat etc/dnf/dnf.conf >> /etc/dnf/dnf.conf

dnf upgrade
flatpak update

# TODO dconf

read hostname
hostnamectl hostname $hostname

dnf install -y vim
# TODO RPM Fusion
# TODO Flathub
flatpak install -y com.visualstudio.code
flatpak install -y com.jetbrains.IntelliJ-IDEA-Community
flatpak install -y com.slack.com
flatpak install -y com.axosoft.gitkraken
# TODO Chrome
# TODO Media Codecs

# TODO Firefox config

# TODO Dark Theme

dnf install -y gnome-tweaks

# TODO GNOME Tweaks

flatpak install -y com.mattjakeman.ExtensionManager

# TODO GNOME Extensions

cp .bashrc.d/* ~/.bashrc.d
