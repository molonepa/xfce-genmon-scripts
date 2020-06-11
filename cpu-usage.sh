#!/bin/bash

cpu=$(top -bn 2 -d 0.2 | grep '^%Cpu' | tail -n 1 | awk '{printf "%d", $2+$4+$6}')

color='lightgrey'

cpu="${cpu}%"

echo "<bar>$cpu</bar><tool>CPU: $cpu</tool>"
exit
