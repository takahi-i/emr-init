# SETTING
MAVEN_VERSION=3.2.5

# install packages
sudo yum install -y wget
sudo yum install -y git

# install maven
wget http://ftp.yz.yamagata-u.ac.jp/pub/network/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz
tar xvf apache-maven-$MAVEN_VERSION-bin.tar.gz
sudo mv apache-maven-$MAVEN_VERSION /opt/

# setting env variables
cat cat <<EOT
export M3_HOME=/opt/apache-maven-$MAVEN_VERSION >> $HOME/.bashrc
M3=$M3_HOME/bin >> $HOME/.bashrc
export PATH=$M3:$PATH >> $HOME/.bashrc
EOT
