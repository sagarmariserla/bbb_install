#!/bin/bash

VAR=$1

case $VAR in

     "iot_frmwrk")
     	     Wants="mosquitto.service avahi-daemon.service zipgateway.service zware-service.service"
     	     After="mosquitto.service avahi-daemon.service zipgateway.service zware-service.service network.target"
	     ;;
     "zwave_app")
     	     Wants="mosquitto.service avahi-daemon.service zipgateway.service zware-service.service iot_frmwrk.service"
     	     After="network.target mosquitto.service avahi-daemon.service zipgateway.service zware-service.service iot_frmwrk.service"
	     ;;
     *)
	     echo -e "usage:bash beaglebone_script.sh iot_frmwrk zwave_app"
	     exit 1
	     ;;

esac

echo "Wants="$Wants
echo "After="$After
