export PATH=$PATH:/usr/local/sbin
export HISTSIZE=10000
export HISTTIMEFORMAT="%y-%m-%d %T "
export PS1="@\[\033[33;1m\]\w\[\033[m\]:\[\033[36m\]\$(parse_git_branch)\[\033[m\]$ "

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias c='clear'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias psaux='ps aux'
alias ls='ls -Gt'
alias ll='ls -lhA'

mcd() { mkdir -p "$1" && cd "$1"; }

alias cdg='cd ~/git'
alias cdh='cd ~'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias vi=vim
alias edit=subl
alias qfind='find . -name'
