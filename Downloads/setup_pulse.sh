#! /bin/sh
#
# setup_pulse.sh

mkdir ~/.temp
cd ~/.temp
wget ftp://ftp.tifr.res.in/pulse_secure_linux_package/pulse-9.0R1.x86_64.deb -O pulse.deb
sudo dpkg -i pulse.deb
sudo apt install libwebkitgtk-1.0-0
sudo  /usr/local/pulse/PulseClient_x86_64.sh install_dependency_packages
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pulse
# launch from terminal /usr/local/pulse/pulseUi
# click on +
# give some name 
# url = remote.juniper.net/ace
