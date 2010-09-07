#!/usr/bin/env bash

LOG=/var/log/selenium.log

# start display
Xvfb :0 -screen 0 1024x768x24 2>&1 >/dev/null &

# set default
export DISPLAY=:0

# start selenium
java -jar ./selenium-sauce.jar -log $LOG 
