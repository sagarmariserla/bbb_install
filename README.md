# bbb_install info

1) fresh OS beaglebone

This beaglebone_script.sh file is purge the unwanted proccess and install the dependencies,z-ware web server,zipgateway,iot_frmwrk and zwave_app
NOTE : do not use the sudo permission
Run only the --> bash beaglebone_script.sh <iotfrmwrok executable name> <zwave app executable name>
we have to add the booting_script.sh give the inputs on run time. info is present in booting_script.sh.


2)already purge unwanted process

This normal_script.sh file is stop all the services and install the z-ware web server,zipgateway,iot_frmwrk and zwave_app
NOTE : do not use the sudo permission
Run only the --> bash normal_script.sh <iotfrmwrok executable name> <zwave app executable name>
we have to add the booting_script.sh give the inputs on run time. info is present in the top of booting_script.sh.
we have to add the the rm
