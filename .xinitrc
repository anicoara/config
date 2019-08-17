#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

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

# Trick to get Java applications, such as Intellij IDEA to work correctly in
# dwm.
# See:
# https://tools.suckless.org/x/wmname/
# https://wiki.archlinux.org/index.php/java#Impersonate_another_window_manager
wmname LG3D
export _JAVA_AWT_WM_NONREPARENTING=1

# And our window manager gets started.
exec dwm
