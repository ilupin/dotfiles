#!/bin/sh

eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME gnome-session)/environ)";
export DISPLAY=:0
/usr/bin/notify-send "40 minutes"
