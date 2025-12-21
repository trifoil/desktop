#!/bin/bash

apt update && apt upgrade -y
apt remove -y firefox gnome-weather gnome-clocks gnome-contacts cheese gnome-tour gnome-music yelp xsane totem snapshot firefox epiphany libreoffice-impress libreoffice-writer libreoffice-calc

apt install -y seahorse rustup cargo libreoffice deluge inkscape blender krita helvum btop fastfetch
apt install -y gnome-tweaks

curl -fsS https://dl.brave.com/install.sh | bash

apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub org.videolan.VLC -y
flatpak install flathub rustdesk -y
flatpak install flathub io.github.shiftey.Desktop -y
flatpak install flathub com.simulide.simulide -y
flatpak install flathub cc.arduino.IDE2 -y
flatpak install flathub org.inkscape.Inkscape -y
flatpak install flathub com.boxy_svg.BoxySVG -y
flatpak install flathub org.torproject.torbrowser-launcher -y
flatpak install flathub org.tenacityaudio.Tenacity -y
flatpak install flathub nl.hjdskes.gcolor3 -y
flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub com.github.xournalpp.xournalpp -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub org.wireshark.Wireshark -y
flatpak install flathub com.github.unrud.VideoDownloader -y
flatpak install flathub io.github.vmkspv.netsleuth -y
flatpak install flathub de.capypara.FieldMonitor -y
flatpak install flathub com.logseq.Logseq -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub fr.romainvigier.MetadataCleaner -y
flatpak install flathub im.nheko.Nheko -y
flatpak install flathub io.github.bytezz.IPLookup -y
flatpak install flathub net.waterfox.waterfox -y
flatpak install flathub org.freecad.FreeCAD -y
flatpak install flathub com.jgraph.drawio.desktop -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub org.keepassxc.KeePassXC -y
flatpak install flathub org.gabmus.hydrapaper -y

apt install -y cockpit firewalld
systemctl enable --now cockpit.socket
systemctl enable --now firewalld
firewall-cmd --add-service=cockpit
firewall-cmd --add-service=cockpit --permanent

apt remove -y docker docker-engine docker.io containerd runc
apt install -y ca-certificates curl gnupg
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(. /etc/os-release && echo $VERSION_CODENAME) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl enable --now docker
usermod -aG docker $USER

install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg | gpg --dearmor -o /etc/apt/keyrings/vscodium-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/vscodium-archive-keyring.gpg] https://download.vscodium.com/debs vscodium main" | tee /etc/apt/sources.list.d/vscodium.list
apt update
apt install -y codium


deb http://deb.debian.org/debian/ bookworm main contrib non-free
dpkg --add-architecture i386
apt update
apt install steam-installer
apt install mesa-vulkan-drivers libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386
