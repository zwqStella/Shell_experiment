#!/bin/bash
# use this to test some basic elements in shell
# variable, parameter and flow control
str1="Hello,"$1"!"
f="f"
if [ $2 == $f ]
then
str2="You are a beautiful girl."
else
str2="You are a handsome boy."
fi
echo $str1
echo $str2
unset str1
unset str2
unset f
exit 0
