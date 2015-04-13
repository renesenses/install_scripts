#!/bin/sh

cd /usr/local/src

curl --remote-name --location ftp://sourceware.org/pub/libffi/libffi-3.2.1.tar.gz

tar -xzvf libffi-3.2.1.tar.gz

cd libffi-3.2.1

./configure -prefix=/usr/local/libffi-3.2.1

make

make install

ln -s libffi-3.2.1 /usr/local/libffi

echo 'export LD_LIBRARY_PATH=/usr/local/libffi/lib:$LD_LIBRARY_PATH' >> ~/.bash_profile

source ~/.bash_profile