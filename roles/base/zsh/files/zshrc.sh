# base
HISTFILE=$HOME/.zsh-history
HISTSIZE=0xFFFFFFF
SAVEHIST=0xFFFFFFF
setopt share_history
setopt AUTO_MENU
setopt AUTO_PUSHD
setopt CORRECT
setopt HIST_NO_STORE
setopt LIST_PACKED
setopt SHARE_HISTORY

PROMPT="%B%F{red}#%b%f "
RPROMPT="%B%F{yellow}[%n@%m:%~ ]%b%f"

# color
autoload -U compinit
compinit

eval $(gdircolors)

if [ -n "$LS_COLORS" ]; then
  zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

alias ls="gls --color"

# keymap
bindkey -v

# variables
export EDITOR=vim
export SHELL=/bin/zsh

# aliases
alias cp='cp -i'
alias gf="find . -not -regex '.*/\..*' -print0 | xargs -0 grep -E"
alias ha='history -E 1'
alias gh='history -E 1 | grep -E'
alias gp='ps ax | grep -E'
alias l='ls -F'
alias l.='ls -d .*'
alias la='ls -a'
alias ll='ls -l'
alias ll.='ls -l -d .*'
alias lla='ls -la'
alias mv='mv -i'
alias rm='rm -i'

# include sub settings
for config in $(find ~/.zshrc.d -name "*.sh"); do
  source $config;
done

# include local setting
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
