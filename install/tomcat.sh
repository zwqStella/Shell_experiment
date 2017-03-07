#this file hasn't been tested.. waiting for modification
#/bin/bash
wget -q -x -p ~/tomcat -o tomcat-8.tar.gz http://mirror.bit.edu.cn/apache/tomcat/tomcat-8/v8.5.11/bin/apache-tomcat-8.5.11.tar.gz
cd ~/tomcat
tar -x -f tomcat-8.tar.gz
rm tomcat-8.tar.gz
cd tomcat-8
./bin/startup.sh
exit 0
