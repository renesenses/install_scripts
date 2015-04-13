#!/bin/sh

cd /usr/local/src

curl --remote-name --location http://pkgconfig.freedesktop.org/releases/pkg-config-0.28.tar.gz

tar -xzvf pkg-config-0.28.tar.gz

cd pkg-config-0.28

# ./configure -prefix=/usr/local/pkg-config-0.28
./configure --with-internal-glib --prefix=/usr/local/pkg-config-0.28

make
make install

make install

ln -s pkg-config-0.28 /usr/local/pkg-config

echo 'export PATH=/usr/local/pkg-config/bin:$PATH' >> ~/.bash_profile

source ~/.bash_profile

pkg-config -version