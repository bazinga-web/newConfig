# aliases
alias tsq="ssh tsq@132.232.96.193"

# Fast Config
alias vim="nvim"
alias vi="nvim"
alias zrc="vim ~/.zshrc"
alias up="source ~/.zshrc"
alias vrc="vim ~/.config/nvim/init.vim"
alias yrc="vim ~/.config/yabai/yabairc"
alias src="vim ~/.config/skhd/skhdrc"
alias ra="ranger"
alias arc="vim ~/.config/alacritty/alacritty.yml"
alias rrc="vim ~/.config/ranger/rc.conf"
alias ip="ifconfig | awk '/inet /' | awk '!/127.0.0.1/' | awk '{print $2}'"

# jump
alias jzm="cd ~/Documents/zm"
alias jd="cd ~/Desktop"
alias jde="cd ~/Documents/demo"
alias jc="cd ~/.config"
alias jzsh="cd ~/.config/zsh/"

# git
alias gck='_a(){ git checkout feature/"$1";}; _a'

# mysql
alias mys="$MYSQLROOT start"
alias myr="$MYSQLROOT restart"
