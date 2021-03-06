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
[ -z "$TMUX" ] && export TERM=xterm-256color
bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [[ -s "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

hash -d dls=$HOME/Downloads
hash -d dfs=$HOME/Projects/dotfiles
