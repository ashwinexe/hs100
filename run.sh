#make sure to grand permission to this file: chmod u+x run.sh

#!/bin/sh
var="$(cat /sys/class/power_supply/BAT0/capacity)"
echo $var
if [ $var -gt 30 ]
then
    echo "no need of charging"
    "$(./hs100 your-smartplug-HOST-ip off)"
else   
    echo "starting charger"
    "$(./hs100 your-smartplug-HOST-ip on)"
fi