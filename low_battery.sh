BATPATH=/sys/class/power_supply/BAT1
CHARGE_NOW=`cat $BATPATH/capacity`
STATUS=`cat $BATPATH/status`
LOW=15                                          # battery percent after which it will show low battery notification if discharging 
MINUTES_PER_ONE_PERCENT=1.5             	# this is used for calcuting remaining battery juice in minutes
TIME_LEFT=`expr $MINUTES_PER_ONE_PERCENT*$CHARGE_NOW | bc` 
if [ $CHARGE_NOW -lt $LOW -a  $STATUS != "Charging" ]
then
	/usr/bin/notify-send --urgency=critical "Low battery !" "Less than `printf "%.0f" $TIME_LEFT` minutes of charge left"
fi

