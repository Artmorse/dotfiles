#!/bin/sh
if type "xrandr"; then

	monitors=`xrandr --listmonitors | tail -n +2 | awk -F'\\ \\ ' '{print $NF}'`
	len_monitors=`xrandr --listmonitors | head -n 1 | awk -F'\\ ' '{print $NF}'`

	echo "${len_monitors} monitor(s) detected"

    if [ $((len_monitors)) -eq 2 ]; then
        # monitor_1 = eDP-1 // monitor_2 = DP-3
        xrandr --output eDP-1 --primary --mode 1920x1080 --pos 760x1440 --rotate normal --output HDMI-1 --mode 3440x1440 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-2 --off --output DP-2 --off --output HDMI-3 --off
    fi
else
	echo "xrandr not found..."
	exit 1
fi
