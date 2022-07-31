#!/bin/bash

echo Used disk:
df --total | tail -1 | awk '{print $3}'
echo Availsble disk:
df --total | tail -1 | awk '{print $4}'
echo Used memory:
free | head -2 | tail -1 | awk '{print $3}'
echo Free memory:
free | tail -2 | head -1  | awk '{print $4}'
echo Cpu utilization:

idle=$(mpstat | tail -1 | awk '{print $13}')
ut=`echo "100.00 - $idle" | bc`
echo $ut
