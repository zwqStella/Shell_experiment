#!/bin/bash
echo please input two numbers:
read -p "first number:" first
read -p "second number:" second
total=$(($first+$second))
echo "$first+$second=" $total
exit 0
