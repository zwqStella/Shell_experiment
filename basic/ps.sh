#!/bin/bash
echo "the running procedures of $1 is:"
ps -u $1
if [ $# == 2 ]
then
kill $2
elif [ $? != 0 ]
then
echo "wrong command"
fi
