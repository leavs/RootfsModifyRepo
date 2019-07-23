#!/bin/sh

#
# Need touch /usr/local/buzopen and write "1" to it in rootfs first.
#

buzpath=/usr/local/buzopen
buz_val=`cat /usr/local/buzopen`
if [ -e $buzpath ]; then
    if [ $buz_val = "1" ]; then
	buzctl disable
    else
	buzctl enable
    fi
else
    echo "Set buzzer value failed, make sure file($buzpath) existed"
fi

