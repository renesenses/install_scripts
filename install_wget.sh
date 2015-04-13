#!/bin/sh

cd /usr/local/src

curl --remote-name --location ftp://ftp.gnu.org/gnu/wget/wget-1.16.3.tar.gz

tar -xzvf wget-1.16.3.tar.gz

cd wget-1.16.3

./configure -prefix=/usr/local/wget-1.16.3

make
make test
make install

ln -s wget-1.16.3 /usr/local/wget

echo 'export PATH=/usr/local/wget/bin:$PATH' >> ~/.bash_profile

source ~/.bash_profile 

wget -help