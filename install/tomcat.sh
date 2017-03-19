#/bin/bash
wget -q -P /tomcat http://mirror.bit.edu.cn/apache/tomcat/tomcat-8/v8.5.11/bin/apache-tomcat-8.5.11.tar.gz
cd /tomcat
tar -xzvf apache-tomcat-8.5.11.tar.gz
rm apache-tomcat-8.5.11.tar.gz
cd apache-tomcat-8.5.1
./bin/startup.sh
exit 0
