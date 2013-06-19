#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
eval `dircolors $HOME/.dir-colors/dircolors.256dark`
[ -z "$TMUX" ] && export TERM=xterm-256color

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
