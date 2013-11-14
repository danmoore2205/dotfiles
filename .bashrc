#!/bin/bash

export PATH=~/bin:/usr/local/bin:$PATH

# need to set these to nothing to stop Gtk warnings
# see http://orthogonal.me/2012/06/20/getting-rid-of-gtk-warnings-on-emacs-24-1-4/
export UBUNTU_MENUPROXY=
export GTK_MODULES=

function subl() { /usr/bin/subl "$1" & }

function copyr() {
     scp dev@devmac-2.au.lpint.net:/Users/dev/projects/remixer/"$1" /Users/dmoore/Downloads/remixer/
     open /Users/dmoore/Downloads/remixer/$(echo "$1" | awk '{n = split($0,array,"/")} END{print array[n]}')
  }

alias ll='ls -alG'
alias g='git status'
alias bes='bundle exec rspec'
alias bers='bundle exec rspec --drb spec'
alias debug='bundle exec rake restart DEBUG=true'
alias restart_mysql='/Library/StartupItems/MySQLCOM/MySQLCOM restart'
alias apache='sudo /usr/sbin/apachectl'
alias spork='bundle exec spork'

if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
