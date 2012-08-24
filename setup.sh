apt-get -y update
apt-get -y upgrade
# Install vim and ruby/rake for the janus vim settings
apt-get -y install wget vim rake

# Enable IPv6 so that a link-local address will show up on the network during headless operation
echo ipv6 >> /etc/modules

# Custom interfaces file to enable dhcp on eth0 and a wirelessN USB card, with a fallback static IP for eth0
apt-get -y install avahi-autoipd
cp interfaces /etc/networks/interfaces
cp wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf

# Setup the janus configuration for VIM
curl -Lo- https://bit.ly/janus-bootstrap | bash

# Setup XBMC from pre-built source (save >24hours)
apt-get -y install libmicrohttpd10 libsmbclient libavahi-client3  libjasper1 libyajl2 libtiff4 libfontconfig1 libfribidi0 libpng12-0 libcdio13 libsamplerate0 sqlite3 libcurl3-gnutls libtinyxml2.6.2 libssh-4 libmysqlclient18 liblzo2-2 libpcrecpp0
wget http://www.memetic.org/files/xbmc.tar.gz
tar zxvf xbmc.tar.gz
cp -av xbmc/usr /
cp /boot/arm128_start.elf /boot/start.elf
