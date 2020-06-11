#!/bin/bash

mem=$(free -m | awk 'NR==2{printf $3*100/$2}')
total=$(free -m | awk 'NR==2{printf "%s", $2}')
used=$(free -m | awk 'NR==2{printf "%s", $3}')

echo "<bar>$mem</bar><tool>RAM: $used"MB" / $total"MB"</tool>"
