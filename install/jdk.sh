#!/bin/bash
if [ ! -d "/java2" ]; then
mkdir /java2
else
rm -r /java2
mkdir /java2 
fi
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -q -P /java2 http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-i586.tar.gz
tar -xzvf /java2/jdk-8u121-linux-i586.tar.gz 
#rm jdk-8u121-linux-i586.tar.gz
echo "JAVA_HOME=/java/jdk-8u121-linux-i586
CLASSPATH=$JAVA_HOME/lib/
PATH=$PATH:$JAVA_HOME/bin
export PATH JAVA_HOME CLASSPATH" >> ~/.profile
source ~/.profile
java -version
exit 0
