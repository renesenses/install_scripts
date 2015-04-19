#!/bin/sh

\curl -L http://install.perlbrew.pl | bash

echo 'source ~/perl5/perlbrew/etc/bashrc' >> ~/.bash_profile

perlbrew init
perlbrew install-cpanm
perlbrew install perl-5.16.2
perlbrew install perl-5.18.2
perlbrew install perl-5.20.2
