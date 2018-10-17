BATPATH=/sys/class/power_supply/BAT1
CHARGE_NOW=`cat $BATPATH/capacity`
STATUS=`cat $BATPATH/status`
TIME_LEFT=`expr 1.5*$CHARGE_NOW | bc` 
if [ $CHARGE_NOW -lt 15 -a  $STATUS != "Charging" ]
then
	/usr/bin/notify-send --urgency=critical "Low battery !" "Less than `printf "%.0f" $TIME_LEFT` minutes of charge left"
fi

