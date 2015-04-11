#!/bin/sh

cd /usr/local/src

curl --remote-name -location http://tukaani.org/xz/xz-5.2.1.tar.gz

tar -xzvf xz-5.2.1.tar.gz

cd xz-5.2.1

./configure --prefix="/usr/local/xz-5.2.1"

make

make install

ln -s xz-5.2.1 /usr/local/xz 

echo 'export PATH=/usr/local/xz/bin:$PATH' >> ~/.bash_profile
echo 'export LD_LIBRARY_PATH=/usr/local/zx/lib:$LD_LIBRARY_PATH' >> ~/.bash_profile

source ~/.bash_profile 

xz --version

