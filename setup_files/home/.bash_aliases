# cd
alias cd.='cd ..'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Compatibility
alias c='clear'
alias clip='xclip -sel clip'
alias clipboard='clip'
alias cls='clear'
alias cpuinfo='lscpu'
alias diff='colordiff'
alias edit='vim'
alias top='atop'

# Safety
alias chgrp='chgrp --preserve-root'
alias chmod='chmod --preserve-root'
alias chown='chown --preserve-root'
alias rm='rm -I --preserve-root'

# Override defaults
alias cp='cp -i'
alias df='df -H'
alias du='du -ch'
alias mv='mv -i'
alias facter='facter --puppet'
alias mkdir='mkdir -pv'
alias ping='ping -c 5'
alias wget='wget -c'

# Colouring
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias xzegrep='xzegrep --color=auto'
alias xzfgrep='xzfgrep --color=auto'
alias xzgrep='xzgrep --color=auto'
alias zegrep='zegrep --color=auto'
alias zfgrep='zfgrep --color=auto'
alias zgrep='zgrep --color=auto'

# Abbreviations
alias h='history'
alias j='jobs -l'
alias l='ls'
alias l.='ls -d .* --color=auto'
alias la='ls -A'
alias lh='ls -lah'
alias ll='ls -la'
alias ln='ln -i'
alias ls='ls -F --color=auto'
alias va='source .venv/bin/activate'
alias vc='python3.9 -m venv .venv'
alias ve='deactive'
alias vi='vim'
alias vis='vim "+set si"'
alias svi='sudo vim'

# Networking
alias fastping='ping -c 100 -s.2'
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
alias meminfo='free -m -l -t'
alias ports='netstat -tulanp'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

# Time
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias nowtime='now'

# Utils
alias s='source ~/.bashrc'
alias path='echo -e ${PATH//:/\\n}'
