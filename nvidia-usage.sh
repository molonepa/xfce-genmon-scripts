#!/bin/bash
GPU=$(nvidia-smi -q | grep 'Memory Usage' -A 2 | sed 's/[^0-9 ]//g')
MAX=$(echo $GPU | awk '{print $1}')
USE=$(echo $GPU | awk '{print $2}')
GPU=$(echo $GPU | awk '{print $2/$1*100}')
echo "<bar>$GPU%</bar><tool>VRAM: $USE"MB" / $MAX"MB"</tool>"
exit
