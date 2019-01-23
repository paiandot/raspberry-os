#!/bin/sh
volumn_path="/Volumes/boot/"
wpa="wpa_supplicant.conf"
ssid="ip_address"
psk="password"

# create wpa_supplicant.conf file
touch ${volumn_path}/${wpa} && echo "${wpa} created." || echo "Error. Failed to create ${wpa} file."

echo "
country=GB
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
    ssid="\"${ssid}"\"
    psk="\"${psk}"\"
    key_mgmt=WPA-PSK
}
" >> ${wpa} 


# create SSH
touch ${volumn_path}/SSH
