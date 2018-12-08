#!/bin/sh

#ifconfig eth0 192.168.1.247
#mount -t nfs -o nolock -o tcp 192.168.1.100:/nfs  /mnt

echo "root:tagye1207" | chpasswd

ulimit -c 9999	
ulimit -c 9999
	
mount -t vfat /dev/mmcblk0p1  /mnt/sdcard

export HOME='/root'
export LD_LIBRARY_PATH='/usr/local/lib:/usr/lib:/qt_lib'
export LOGNAME='root'
export OLDPWD='/qt_lib'
export PATH='/usr/bin:/usr/sbin:/bin:/sbin'
export PWD='/opt'
export QT_PLUGIN_PATH='/qt_lib/plugins'
export QT_QWS_FONTDIR='/qt_lib/fonts'
export QWS_DISPLAY='LinuxFb:/dev/fb0'
export TERM='vt100'
export USER='root'


/opt/3516a_proc &
/opt/myTest_8.17 -qws -fn DejaVuSans.ttf &

