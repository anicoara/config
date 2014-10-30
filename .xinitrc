#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Only when running within vmware...
/usr/bin/vmware-user-suid-wrapper

# Update X resources
xrdb -l .Xdefaults

# Background
xsetroot -bg black

# Statusbar loop for DWM
while true; do
# Date and Time
DWM_CLOCK=$( date "+%a %d %b %H:%M" );

# Overall output command
DWM_STATUS="$DWM_CLOCK";
xsetroot -name "$DWM_STATUS";
sleep 60;

done &

# And our window manager gets started.
exec dwm
