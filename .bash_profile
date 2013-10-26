[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source $HOME/.bashrc

alias be="bundle exec"
alias bec='bundle exec cucumber'
alias ber='bundle exec rake'

alias ga="git add"
alias gc="git commit"
alias gca="git commit -a"
alias gca="git commit -am"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff --word-diff"
alias gl="git log --name-status"
alias gpl="git pull --rebase"
alias gs="git status"
alias gsl="git stash list"
alias gsp="git stash pop"
alias gsr="git svn rebase"
alias gss="git stash save"

alias ll="ls -al"

alias mysql="/usr/local/mysql/bin/mysql"


if [ "$PS1" ]; then

  red='\[\e[31m\]'
  green='\[\e[32m\]'
  yellow='\[\e[33m\]'
  cyan='\[\e[36m\]'
  grey='\[\e[0;37m\]'

  reset_color='\[\e[0m\]'
  set_title='\[\e]0;\]\H:\w\[\007\]'


  prompt="$green$"

  if test `id -un` = root; then
    prompt="$red#"
  fi

  function prompt-git-user() {
    git_user=`git config --get user.name`
    if test -n "$git_user"; then
      echo " '$git_user'"
    fi
  }

  function prompt-git-branch() {
    git_branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/^* //'`
    if test -n "$git_branch"; then
      echo " [$git_branch]"
    fi
  }
  function git_branch() {
    echo "git branch"
  }


  function boxname() {
    rvm_current=`rvm current`
    echo " '$rvm_current'"
  }
  function thing() {
    echo " test"
  }

  # create a $fill of all screen width minus the time string and a space:
  let fillsize=${COLUMNS}-12
  fill=""
  while [ "$fillsize" -gt "0" ]
  do
  fill="-${fill}" # fill with underscores to work on
  fill="---------------------"
  fill="${fill}${fill}"
  let fillsize=${fillsize}-1
  done
# ${fill}
        PS1="${set_title}${fill}
${green}(\t) ${yellow}\w${grey}\$(prompt-git-branch)
${prompt} ${reset_color}"

fi
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Users/dmoore/Downloads/AWS-ElasticBeanstalk-CLI-2.2/eb/macosx/python2.7:/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
