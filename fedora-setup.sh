#!/bin/bash

dnf update -y
dnf remove firefox gnome-weather gnome-clocks gnome-contacts cheese gnome-tour gnome-music gnome-calendar yelp xsane totem snapshot firefox epiphany libreoffice-impress libreoffice-writer libreoffice-calc -y

# dnf install @virtualization -y
# dnf group install --with-optional virtualization -y
# systemctl start libvirtd
# systemctl enable libvirtd
# usermod -a -G libvirt $(whoami)

dnf install rustup cargo -y
dnf install texlive-scheme-full -y
dnf install libreoffice -y
dnf install deluge -y
dnf install blender -y
dnf install krita -y
dnf install helvum btop fastfetch -y
dnf install hydrapaper -y
sudo dnf install gnome-tweaks -y

curl -fsS https://dl.brave.com/install.sh | sh

flatpak install flathub org.videolan.VLC -y
flatpak install rustdesk -y
flatpak install zed -y
flatpak install io.github.shiftey.Desktop -y
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
flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer -y
flatpak install flathub com.heroicgameslauncher.hgl -y


dnf remove docker \
           docker-client \
           docker-client-latest \
           docker-common \
           docker-latest \
           docker-latest-logrotate \
           docker-logrotate \
           docker-selinux \
           docker-engine-selinux \
           docker-engine 

sudo dnf install podman podman-compose -y
sudo dnf install podman-docker -y
docker run hello-world
docker compose version


rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h\n" | sudo tee -a /etc/yum.repos.d/vscodium.repo
sudo dnf install codium -y

