#!/bin/bash
yum install -y centos-release-scl
rm -f /etc/yum.repos.d/CentOS-SCLo*
cat <<EOF > /etc/yum.repos.d/CentOS-SCLo-scl.repo
[centos-sclo-sclo]
name=CentOS-7 - SCLo sclo
baseurl=http://vault.centos.org/centos/7/sclo/\$basearch/sclo/
gpgcheck=0

[centos-sclo-sclo-testing]
name=CentOS-7 - SCLo sclo Testing
baseurl=http://buildlogs.centos.org/centos/7/sclo/\$basearch/sclo/
gpgcheck=0

[centos-sclo-sclo-source]
name=CentOS-7 - SCLo sclo Sources
baseurl=http://vault.centos.org/centos/7/sclo/Source/sclo/
gpgcheck=0

[centos-sclo-sclo-debuginfo]
name=CentOS-7 - SCLo sclo Debuginfo
baseurl=http://debuginfo.centos.org/centos/7/sclo/\$basearch/
gpgcheck=0
EOF

cat <<EOF > /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo
[centos-sclo-rh]
name=CentOS-7 - SCLo rh
baseurl=http://vault.centos.org/centos/7/sclo/\$basearch/rh/
gpgcheck=0

[centos-sclo-rh-testing]
name=CentOS-7 - SCLo rh Testing
baseurl=http://buildlogs.centos.org/centos/7/sclo/\$basearch/rh/
gpgcheck=0

[centos-sclo-rh-source]
name=CentOS-7 - SCLo rh Sources
baseurl=http://vault.centos.org/centos/7/sclo/Source/rh/
gpgcheck=0

[centos-sclo-rh-debuginfo]
name=CentOS-7 - SCLo rh Debuginfo
baseurl=http://debuginfo.centos.org/centos/7/sclo/\$basearch/
gpgcheck=0
EOF
yum clean all
yum repolist