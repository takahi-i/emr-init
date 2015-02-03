# SETTING
MAVEN_VERSION=3.2.5
MAVEN_PACKAGE=apache-maven-$MAVEN_VERSION

# install packages
sudo yum install -y wget
sudo yum install -y git

# install maven
wget http://ftp.yz.yamagata-u.ac.jp/pub/network/apache/maven/maven-3/$MAVEN_VERSION/binaries/$MAVEN_PACKAGE-bin.tar.gz
tar xvf $MAVEN_PACKAGE-bin.tar.gz

if [ -e /opt/$MAVEN_PACKAGE ]; then
    echo "maven is installed"
else
    echo "maven is NOT installed"
    sudo mv $MAVEN_PACKAGE /opt/
fi

# setting env variables
cat $HOME/.bashrc <<EOF
EOT
export M3_HOME=/opt/apache-maven-$MAVEN_VERSION
M3=$M3_HOME/bin
export PATH=$M3:$PATH
EOT  
