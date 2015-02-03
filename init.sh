# SETTING
MAVEN_VERSION=3.2.5

# install packages
sudo yum install -y wget
sudo yum install -y git

# install maven
wget http://ftp.yz.yamagata-u.ac.jp/pub/network/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz
sudo mv apache-maven-3.2.5 /opt/

# setting env variables
export M3_HOME=/opt/apache-maven-$MAVEN_VERSION
M3=$M3_HOME/bin
export PATH=$M3:$PATH
