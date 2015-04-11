#!/bin/sh

cd /usr/local/src

curl --remote-name --location http://search.cpan.org/CPAN/authors/id/M/MD/MDOOTSON/Wx-0.9927.tar.gz

tar -xzvf Wx-0.9927.tar.gz

cd Wx-0.9927

perl Makefile.PL PREFIX=/usr/local/Wx-0.9927

make
make test
make install

ln -s Wx-0.9927 /usr/local/Wx

#echo 'export PATH=/usr/local/wxWidgets/bin:$PATH' >> ~/.bash_profile
#echo 'export LD_LIBRARY_PATH=/usr/local/wxWidgets/lib:$LD_LIBRARY_PATH' >> ~/.bash_profile

#source ~/.bash_profile 

#wxPerl.app
