BootStrap: docker
From: ubuntu:18.04

%post
    # install some system deps
    apt-get -y update
    apt-get -y install wget libgl1 libglib2.0-0 libqt5gui5

    file_string=robo3t-1.3.1-linux-x86_64-7419c406
    wget https://download-test.robomongo.org/linux/$file_string.tar.gz
    tar -xf $file_string.tar.gz
    mkdir -p /opt
    mv $file_string /opt/robo3t-1.3.1-linux-x86_64
    rm $file_string.tar.gz
    
    apt-get -y remove wget
    apt-get -y autoremove
    apt-get clean

%apphelp Robo3T
    "Robo3T version 1.3.1"

%apprun Robo3T
    /opt/robo3t-1.3.1-linux-x86_64/bin/robo3t

%runscript
    exec /opt/robo3t-1.3.1-linux-x86_64/bin/robo3t "$@"
