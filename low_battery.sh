BATPATH=/sys/class/power_supply/BAT1
CHARGE_NOW=`cat $BATPATH/capacity`
if [ $CHARGE_NOW -lt 15 ]
then
	/usr/bin/notify-send --urgency=critical "Low battery !" "Less than $((2 * $CHARGE_NOW)) minutes of charge left"

fi

