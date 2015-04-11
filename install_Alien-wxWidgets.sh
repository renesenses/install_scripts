#!/bin/sh

cd /usr/local/src

curl --remote-name --location http://search.cpan.org/CPAN/authors/id/M/MD/MDOOTSON/Alien-wxWidgets-0.67.tar.gz

tar -xzvf Alien-wxWidgets-0.67.tar.gz

cd Alien-wxWidgets-0.67


perl Build.PL prefix=/usr/local/Alien-wxWidgets-0.67

perl Build
perl Build test
perl Build install

ln -s Alien-wxWidgets-0.67 /usr/local/Alien-wxWidgets

echo 'export PATH=/usr/local/Alien-wxWidgets/lib:$PATH' >> ~/.bash_profile
echo 'export PATH=/usr/local/Alien-wxWidgets/man:$PATH' >> ~/.bash_profile

source ~/.bash_profile 
