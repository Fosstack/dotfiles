# dotfiles

![neofetch](screenshots/2018-08-18-17:55:00.png)


![tilling-windows](screenshots/2018-09-23-13:39:04.png)


![i3lock-next1](screenshots/i3lock-next1.png)


![i3lock-next2](screenshots/i3lock-next2.png)


add this to crontab 

`*/3 * * * * sudo -u $USER DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u $USER)/bus /home/$USER/.local/bin/low_battery.sh`
