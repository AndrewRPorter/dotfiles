#!/bin/bash

sleep 1
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done  # wait for all running processes to finish
/usr/bin/polybar -r -q andrew &
