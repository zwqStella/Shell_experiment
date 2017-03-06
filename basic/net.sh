#!/bin/bash
#beginning the test
testing=$(netstat -tuln | grep ":80")
if [ "$testing" !=  "" ]
then
	echo "www service is running."
fi

testing=$(netstat -tuln | grep ":22")
if [ "$testing" != "" ]
then
	echo "SSH service is running."
fi

testing=$(netstat -tuln | grep ":21")
if [ "$testing" != "" ]
then
	echo "FTP service is running."
fi

testing=$(netstat -tuln | grep ":21")
if [ "$testing" != "" ]
then
	echo "Mail service is running."
fi

exit 0
