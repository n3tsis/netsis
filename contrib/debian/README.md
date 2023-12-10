
Debian
====================
This directory contains files used to package netsisd/netsis-qt
for Debian-based Linux systems. If you compile netsisd/netsis-qt yourself, there are some useful files here.

## netsis: URI support ##


netsis-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install netsis-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your netsis-qt binary to `/usr/bin`
and the `../../share/pixmaps/netsis128.png` to `/usr/share/pixmaps`

netsis-qt.protocol (KDE)

