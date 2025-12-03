#!/bin/bash
yum install -y python3
ln -sf /usr/bin/python3 /usr/bin/python
sed -i -e "s/#!\/usr\/bin\/python/#!\/usr\/bin\/python2/g" /usr/bin/yum
sed -i -e "s/#! \/usr\/bin\/python/#! \/usr\/bin\/python2/g" /usr/libexec/urlgrabber-ext-down
pip3 install --upgrade pip