#!/usr/bin/env bash

echo "On macOS, command required is gnu-time (gtime)"
echo "On Linux, command required is GNU time"

if [ "$(uname)" = "Darwin" ]; then
    time=('gtime')
else
    time=('time')
    echo "time"
fi

for i in 100 500 1000 1500 2000 2500 2500 3000 3500 4000 4500 5000
    do ./she-process.py en $i
    "${time}" -v sushi -o tests/timed_test_${i}.txt
    rm -rf fsh-generated/resources/*
    rm -rf input/fsh/en*
done
