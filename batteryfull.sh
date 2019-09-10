#!/usr/bin/env bash

# requires one arg representing the message to show and the battery level
notify_something () {
	notify-send -i "$PWD/batteryfull.png" "$1" "Level: $2%"
	paplay /usr/share/sounds/ubuntu/stereo/message.ogg
}

# main loop
while true
do
    export DISPLAY=:0.0
    battery_percent_list=$(acpi -b | grep -P -o '[0-9]+(?=%)')
    battery_percent=$(echo $battery_percent_list | cut -d" " -f1)
    if on_ac_power; then
        if [ $battery_percent -gt 80 ]; then
		notify_something "Laptop battery is almost fully charged. Unplug charger." $battery_percent
        fi
    elif [ $battery_percent -lt 35 ]; then
	    notify_something "Plug laptop charger. Battery level under 35%." $battery_percent
    fi
    sleep 300 # (5 minutes)
done
