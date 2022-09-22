#!/bin/sh

dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
dconf write /org/gnome/desktop/background/picture-options "'zoom'"
dconf write /org/gnome/desktop/background/picture-uri "'file:///usr/share/backgrounds/f36/default/f36.xml'"
dconf write /org/gnome/desktop/background/picture-uri-dark "'file:///usr/share/backgrounds/f36/default/f36.xml'"
dconf write /org/gnome/desktop/background/primary-color "'#000000000000'"
dconf write /org/gnome/desktop/background/secondary-color "'#000000000000'"
dconf write /org/gnome/desktop/screensaver/picture-options "'zoom'"
dconf write /org/gnome/desktop/screensaver/picture-uri "'file:///usr/share/backgrounds/f36/default/f36.xml'"
dconf write /org/gnome/desktop/screensaver/primary-color "'#000000000000'"
dconf write /org/gnome/desktop/screensaver/secondary-color "'#000000000000'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Control><Alt>t'"
if [ `whoami` = root ]; then
    echo "You must run this as your user!"
    exit 1
fi

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'gnome-terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings ["'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/'"]
dconf write /org/gnome/desktop/wm/keybindings/switch-windows ["'<Alt>Tab'"]
dconf write /org/gnome/desktop/wm/keybindings/switch-windows-backward ["'<Shift><Alt>Tab'"]
dconf write /org/gnome/desktop/wm/keybindings/switch-applications ["'<Super>Tab'"]
dconf write /org/gnome/desktop/wm/keybindings/switch-applications-backward ["'<Shift><Super>Tab'"]
dconf write /org/gnome/desktop/interface/gtk-theme "'Adwaita-dark'"

#git clone https://github.com/brunelli/gnome-shell-extension-installer.git $work
#alias gnome-ext="$work/gnome-shell-extension-installer"
#gnome-ext

#TODO: install GNOME Extensions

cp .bashrc.d/* ~/.bashrc.d

