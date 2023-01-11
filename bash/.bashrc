#Important
eval "$(starship init bash)" #starship prompt
xset r rate 200 50 #responsive keys
set -o vi
set bell-style visual

# Alias
alias PJC="cd ~/Documents/Projects/Course/" #dir shortcut 
alias PJP="cd ~/Documents/Projects/Personal/" #dir shortcut 
alias PJT="cd ~/Documents/Projects/Testing/" #dir shortcut 
alias nvimrc='nvim ~/.config/nvim/init.lua' #open nvimrc
alias python='python3.8' #open nvimrc
alias poweroff='systemctl poweroff' #turning off pc 
alias anime='~/Apps/ani-cli/ani-cli' #anime cli
alias se='du -a ~/.config/* ~/Documents/Projects/* | awk "{print $2}" | fzf | xargs -r $EDITOR ; '
alias todo='nvim ~/Documents/neorg/gtd/index.norg'
alias jspg='nvim ~/Documents/Projects/Testing/webDev/playground/app.js'
alias pypg='nvim ~/Documents/Projects/Testing/python/PPG/playground.py'
alias gopg="nvim ~/Documents/Projects/Testing/go/playground/pg.go"
alias shpg='nvim ~/Documents/Projects/Testing/bashScript/playground/playground.sh'
alias luapg='nvim ~/Documents/Projects/Testing/lua/playground/playground.lua'
alias tmux='tmux -f ~/.config/tmux/.tmux.conf -u'
alias journal="nvim ~/Documents/norg/index.norg"
alias yt-dlp='yt-dlp --config-locations "~/.config/yt-dlp.conf"'
alias pomodoro="go run ~/Documents/Projects/Personal/godoro/main.go"


alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#Exports
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export PATH="$PATH:$HOME/.local/share/go/bin/"
