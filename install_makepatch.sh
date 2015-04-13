#!/bin/sh
# Requires gnu diff

cd /usr/local/src

curl --remote-name --location http://search.cpan.org/CPAN/authors/id/J/JV/JV/makepatch-2.05.tar.gz

tar -xzvf makepatch-2.05.tar.gz

cd makepatch-2.05

perl Makefile.PL

make
make install