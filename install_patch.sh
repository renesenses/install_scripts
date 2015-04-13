#!/bin/sh

cd /usr/local/src

curl --remote-name --location curl -O ftp://ftp.gnu.org/gnu/patch//patch-2.7.5.tar.gz

tar -xzvf patch-2.7.5.tar.gz

cd patch-2.7.5

./configure -prefix=/usr/local/patch-2.7.5

make

make install

ln -s patch-2.7.5 /usr/local/patch

echo 'export PATH=/usr/local/patch/bin:$PATH' >> ~/.bash_profile

source ~/.bash_profile 

patch -version
