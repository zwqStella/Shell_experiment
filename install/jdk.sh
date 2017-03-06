#!/bin/bash
wget -q -x -p /java -o jdk1.8.tar.gz http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-i586.tar.gz
cd /java
tar -x -f jdk1.8.tar.gz
rm jdk1.8.tar.gz
echo JAVA_HOME=/java/jdk1.8
CLASSPATH=$JAVA_HOME/lib/
PATH=$PATH:$JAVA_HOME/bin
export PATH JAVA_HOME CLASSPATH
>> /etc/profile
java -version
exit 0
