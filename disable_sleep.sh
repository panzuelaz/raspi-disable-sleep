#!/bin/bash

# Check sleep function
if ! grep '@xset s noblank\|@xset s off\|@xset -dpms' /etc/xdg/lxsession/LXDE-pi/autostart; then
    echo '@xset s noblank' >> /etc/xdg/lxsession/LXDE-pi/autostart
    echo '@xset s off' >> /etc/xdg/lxsession/LXDE-pi/autostart
    echo '@xset -dpms' >> /etc/xdg/lxsession/LXDE-pi/autostart
    echo 'Sleep function disabled.'
else
    echo 'Power sleep already disabled!'
fi