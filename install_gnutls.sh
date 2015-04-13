#!/bin/sh

cd /usr/local/src

curl --remote-name --location ftp://ftp.gnutls.org/gcrypt/gnutls/v3.4/gnutls-3.4.0.tar.xz

tar -xzvf gnutls-3.4.0.tar.xz

cd gnutls-3.4.0

export NETTLE_CFLAGS ="-I/usr/local/nettle/include"
export NETTLE_LIBS ="-L/usr/local/nettle/lib -lnettle"


./configure --prefix=/usr/local/gnutls-3.4.0

make
# make test
make install

ln -s gnutls-3.4.0 /usr/local/gnutls

echo 'export PATH=/usr/local/gnutls/bin:$PATH' >> ~/.bash_profile


source ~/.bash_profile

gnutls --version