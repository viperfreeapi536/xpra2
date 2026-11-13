#!/bin/bash
set -e
sudo apt-get update
sudo apt-get install -y wget gnupg ca-certificates
sudo wget -O /usr/share/keyrings/xpra.asc https://xpra.org/xpra.asc
sudo wget -O /etc/apt/sources.list.d/xpra.sources https://raw.githubusercontent.com/Xpra-org/xpra/master/packaging/repos/bookworm/xpra.sources
sudo apt-get update
sudo apt-get install -y xpra xpra-html5 xvfb firefox-esr pcmanfm dbus-x11 fonts-noto-core
