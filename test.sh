#!/bin/bash

seconds=5
days=10

while [ $days != 0 ]
do
echo "Days:"$days
seconds=5
     while [ "$seconds" != "0" ]
     do
        echo "seconds:"$seconds
       (( seconds-- ))
                sar -P ALL  1 1 |  grep -v Average | grep -A 1 -B 1  %system | grep -v "%system" | awk '{print $1 "," $3 "," $5}' | sed -n '1!p'
        done
(( days--))
done

# Vladix testing
#second text
