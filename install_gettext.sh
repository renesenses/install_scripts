#!/bin/sh

cd /usr/local/src

curl --remote-name --location ftp://ftp.gnu.org/gnu/gettext/gettext-0.19.4.tar.gz

tar -xzvf gettext-0.19.4.tar.gz

cd gettext-0.19.4
./autogen.sh
./configure -prefix=/usr/local/gettext-0.19.4

make
# make test
make install

ln -s gettext-0.19.4 /usr/local/gettext

echo 'export PATH=/usr/local/gettext/bin:$PATH' >> ~/.bash_profile
echo 'export LD_LIBRARY_PATH=/usr/local/gettext/lib:$LD_LIBRARY_PATH' >> ~/.bash_profile

source ~/.bash_profile
gettext --version