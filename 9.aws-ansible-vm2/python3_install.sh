#!/bin/bash
yum install -y rh-python38
ln -sf /opt/rh/rh-python38/root/bin/python3.8 /usr/bin/python
sed -i -e "s/#!\/usr\/bin\/python/#!\/usr\/bin\/python2/g" /usr/bin/yum
sed -i -e "s/#! \/usr\/bin\/python/#! \/usr\/bin\/python2/g" /usr/libexec/urlgrabber-ext-down

ln -sf /opt/rh/rh-python38/root/bin/pip3.8 /usr/bin/pip3
pip3 install --upgrade pip
ln -sf /opt/rh/rh-python38/root/usr/local/bin/pip3.8 /usr/bin/pip3