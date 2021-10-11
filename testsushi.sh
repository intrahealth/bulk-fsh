#!/usr/bin/env bash

echo "On macOS, command required is gnu-time (gtime)"
echo "On Linux, command required is GNU time"

if [ "$(uname)" = "Darwin" ]; then
    time=('gtime')
else
    time=('time')
    echo "time"
fi

for i in 1 10 50 100 250 500 1000 1500 2000 2500 3000 3500 4000 4500 5000 5500 6000
    do ./she-process.py en $i
    "${time}" -f "Num FSH files: ${i}, Elapsed time: %E, CPU: %P, Max RAM (KB): %M" -a -o tests/time_output_sushi.txt sushi 
    rm -rf fsh-generated/resources/*
    rm -rf input/fsh/en*
done
