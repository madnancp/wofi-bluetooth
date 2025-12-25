#!/bin/bash


is_power_on() {
	local power_status=$(bluetoothctl show | grep "Powered:" | cut -d ":" -f 2)

	if [[ $power_status == "yes" ]]; then
		exit 0
	else
		exit 1
	fi
}


