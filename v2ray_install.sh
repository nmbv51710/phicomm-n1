#!/bin/sh
mkdir -p /storage/tmp
mkdir -p /opt/etc/v2ray
cd /storage/tmp
wget https://github.com/v2fly/v2ray-core/releases/download/v4.31.0/v2ray-linux-arm64-v8a.zip
unzip v2ray-linux-arm64-v8a.zip
mv v2ray /opt/bin
mv v2ctl /opt/bin
mv geo* /opt/etc/v2ray
wget --no-check-certificate -O /opt/etc/v2ray/config.json \
"https://raw.githubusercontent.com/nmbv51710/phicomm-n1/main/config.json"
wget --no-check-certificate -O /opt/etc/init.d/S23v2ray \
"https://raw.githubusercontent.com/nmbv51710/phicomm-n1/main/S23v2ray"
wget --no-check-certificate -O /storage/.config/system.d/v2ray.service \
"https://raw.githubusercontent.com/nmbv51710/phicomm-n1/main/v2ray.service"
chmod +x /opt/etc/init.d/S23v2ray
systemctl enable v2ray.service
/opt/etc/init.d/S23v2ray start
/opt/etc/init.d/S23v2ray check
rm -rf /storage/tmp
