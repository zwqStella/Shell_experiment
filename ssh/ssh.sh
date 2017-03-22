# add user in server
su root
useradd zwqstella

# install ssh
sudo apt-get install openssh-server
/etc/init.d/ssh start
ps -e | grep ssh

# connect to server
vi /etc/hosts
# add a line: 10.10.1.181	server
ssh server

# upload files to server
scp ~/jdk.tar.gz server:/home/zwqstella
scp ~/tomcat.tar.gz server:/home/zwqstella

# configure
ssh server
cd /home/zwqstella
tar -xzvf jdk.tar.gz
tar -xzvf tomcat.tar.gz
mv jdk /usr/java
mv tomcat /usr/tomcat
vi /etc/profile
# add java_home,classpath.path

# start tomcat
cd /usr/tomcat/bin
./startup.sh

# now type localhost:8080/jpetstore in ie
# we can see jpetstore
