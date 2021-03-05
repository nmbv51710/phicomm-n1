#!/bin/sh
mkdir -p /storage/tmp
mkdir -p /opt/etc/v2ray
cd /storage/tmp
wget https://github.com/v2fly/v2ray-core/releases/download/v4.31.0/v2ray-linux-arm64-v8a.zip
unzip v2ray-linux-arm64-v8a.zip
mv v2ray /opt/bin
mv v2ctl /opt/bin
mv geo* /opt/etc/v2ray


