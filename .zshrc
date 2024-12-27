## gitのブランチ名を常に表示する対応
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
# パス表示「現在ディレクトリのみ」
PROMPT='%n@%m %1~ ${vcs_info_msg_0_}%# '
# パス表示「フルパス表示」
# PROMPT='%n@%m %~ ${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '(%b)'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ga='git add .'
alias gc='git commit -m'
alias gb='git branch -a'
alias gd='git diff'
alias gs='git status'
alias gss='git status -s'
alias gl='git log --graph --oneline --decorate --all'
alias gH='git push origin HEAD'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dk='docker'
alias dc='docker compose'


