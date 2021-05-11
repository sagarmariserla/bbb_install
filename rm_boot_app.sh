#! /bin/bash

#usage sudo bash rm_boot_app.sh <iot_frmwrk executable name> <zwave_app executable name>

VAR=$1

case $VAR in

        "iot_frmwrk")
                sudo rm /medha_gateway/frmwrk.log
	       	;;
        "zwave_app")
                sudo rm /medha_gateway/Confio_App.log
		sudo rm /medha_gateway/*.jsn
		;;

        *)
                echo -e "sudo bash rm_boot_app.sh iot_frmwrk or zwave_app"
                exit 1
                ;;
esac

sudo systemctl stop $VAR.service
sudo systemctl disable $VAR.service
sudo rm /usr/sbin/$VAR.sh
sudo rm /etc/systemd/system/$VAR.service
sudo rm /medha_gateway/frmwrk.log

