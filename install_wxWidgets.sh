#!/bin/sh

cd /usr/local/src

curl --remote-name --location https://sourceforge.net/projects/wxwindows/files/3.0.2/wxWidgets-3.0.2.tar.bz2

tar -xzvf wxWidgets-3.0.2.tar.bz2

cd wxWidgets-3.0.2


mkdir build-release
cd build relesae
../configure CPPFLAGS="-I/usr/local/xz/include" --enable-shared --enable-monolithic --with-osx_cocoa CXX='clang++ -std=c++11 -stdlib=libc++' CC=clang  --with-macosx-version-min=10.9 --disable-debug --prefix=/usr/local/wxWidgets-3.0.2
make
make install

ln -s wxWidgets-3.0.2 /usr/local/wxWidgets

echo 'export PATH=/usr/local/wxWidgets/bin:$PATH' >> ~/.bash_profile
echo 'export LD_LIBRARY_PATH=/usr/local/wxWidgets/lib:$LD_LIBRARY_PATH' >> ~/.bash_profile

source ~/.bash_profile 

wx-config 
