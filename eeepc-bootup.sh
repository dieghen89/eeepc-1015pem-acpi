#!/bin/bash
. /etc/acpi/eeepc/eeepc-1015pem-acpi-functions

is_root

#If the cable is plugged
is_ac_plugged
if [ $? -eq 0 ] ; then
	eeepc-power-manager.sh -p $PRESET_AC_PLUG
	sendlog "Boot with $PRESET_AC_PLUG profile"
#If the cable is unplugged
else
	eeepc-power-manager.sh -p $PRESET_AC_UNPLUG
	sendlog "Boot with $PRESET_AC_UNPLUG profile"
fi
