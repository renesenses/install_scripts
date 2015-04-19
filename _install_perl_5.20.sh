#!/bin/sh
# Requirements for perl dev and cpan

cd /usr/local/src

wget http://www.cpan.org/src/5.0/perl-5.20.2.tar.gz

tar -xzf perl-5.20.2.tar.gz

cd perl-5.20.2

./Configure -des -Dprefix=$HOME/localperl

make

make test

make install
