#!/bin/sh
# Requirements for perl dev and cpan

cd ~/GIT_REPO/install_scripts


sudo cpan -i Debug::Client

# Term::Readline:Gnu lib pb


sudo cpan -i File::Basename
# better with perl5.20 or force


sudo cpan -i IPC::Open3
# better with perl5.20 or force

sudo cpan -i POSIX
# better with perl5.18 or force


sudo cpan -i Wx
sudo cpan -i Wx::Perl::ProcessStream
sudo cpan -i Wx::Scintilla

