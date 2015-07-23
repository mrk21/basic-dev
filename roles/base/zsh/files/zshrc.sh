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

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="gls --color"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

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
alias lla='ls -la'
alias mv='mv -i'
alias rm='rm -i'

# include sub settings
for config in $(find ~/.zshrc.d -name "*.sh"); do
  source $config;
done

# include local setting
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
