#!/bin/sh
# Requires gnu diff

cd /usr/local/src

curl --remote-name --location http://git.savannah.gnu.org/cgit/readline.git/snapshot/readline-master.tar.gz

tar -xzvf readline-master.tar.gz

cd readline-master

./configure --prefix=/usr/local/readline-6.3

make
make install

ln readline-6.3 /usr/local/readline


echo 'export LD_LIBRARY_PATH=/usr/local/readline/lib:$LD_LIBRARY_PATH' >> ~/.bash_profile

source ~/.bash_profile
