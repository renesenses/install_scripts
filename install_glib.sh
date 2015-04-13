#!/bin/sh

cd /usr/local/src

curl --remote-name ftp://ftp.gnome.org/pub/GNOME/sources/glib/2.44/glib-2.44.0.tar.xz
tar -xzvf glib-2.44.0.tar.xz

cd glib-2.44.0

./configure CC=clang LDFLAGS="-L/usr/local/gettext/lib" CPPFLAGS="-I/usr/local/gettext/include" --prefix=/usr/local/glib-2.44.0

make
make test
make install

ln -s glib-2.44.0 /usr/local/glib

echo 'export PATH=/usr/local/glib/bin:$PATH' >> ~/.bash_profile
echo 'export LD_LIBRARY_PATH=/usr/local/glib/lib:$LD_LIBRARY_PATH' >> ~/.bash_profile

source ~/.bash_profile 
