#!/bin/sh

cd /usr/local/src

curl --remote-name --location http://search.cpan.org/CPAN/authors/id/M/MD/MDOOTSON/Alien-wxWidgets-0.67.tar.gz

tar -xzvf Alien-wxWidgets-0.67.tar.gz

cd Alien-wxWidgets-0.67

perl Build.PL PREFIX=/usr/local/Alien-wxWidgets-0.67

Build
Build test
Build install

#ln -s Wx-0.9927 /usr/local/Wx

#echo 'export PATH=/usr/local/wxWidgets/bin:$PATH' >> ~/.bash_profile
#echo 'export LD_LIBRARY_PATH=/usr/local/wxWidgets/lib:$LD_LIBRARY_PATH' >> ~/.bash_profile

#source ~/.bash_profile 

#wxPerl.app
