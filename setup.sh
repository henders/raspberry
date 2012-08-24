apt-get update
apt-get upgrade
# Install vim and ruby/rake for the janus vim settings
apt-get install vim rake

# Enable IPv6 so that a link-local address will show up on the network during headless operation
echo ipv6 >> /etc/modules

# Custom interfaces file to enable dhcp on eth0 and a wirelessN USB card, with a fallback static IP for eth0
cp interfaces /etc/networks/interfaces
cp wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf

# Setup the janus configuration for VIM
curl -Lo- https://bit.ly/janus-bootstrap | bash
