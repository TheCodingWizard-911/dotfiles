#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Bars

polybar -rq keyboard 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq cpu 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq ram 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq linux 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq power 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq bspwm 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq window 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq volume 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq date 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq time 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq wifi 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq battery 2>&1 | tee -a /tmp/polybar.log & disown
polybar -rq launcher 2>&1 | tee -a /tmp/polybar.log & disown
