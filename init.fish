#echo ""
#echo "OMF 🍣 ->> running init.fish"

# globals
set -xg FISH_PATH $HOME/.fish.d
set -xg OMF_CONFIG $FISH_PATH
set -xg PROJECTS_PATH $HOME/code
set -xg DOTFILES $PROJECTS_PATH/dotfiles
set -xg USER_RUBY_VERSION 2.6.1
set -xg USER_RAILS_VERSION 5.2.0
set -xg EMACS_PATH $HOME/.emacs.d
set -xg BEFORE_INIT_FILE $FISH_PATH/before.init.fish
set -xg INIT_FILE $FISH_PATH/init.fish
set -xg EMACS_FILE $EMACS_PATH/readme.org
set -xg BASH_FILE $DOTFILES/.bash_profile
set -xg VIM_FILE $DOTFILES/nvim/init.vim
set -xg EDITOR nvim
set -xg BROWSER chrome

# temp
abbr -ag socks  cd $HOME/code/account.sockclub.com
abbr -ag mp  cd $HOME/code/ownlocal/Marketplace-web

# abbrevs
abbr -ag dfs     $DOTFILES
abbr -ag ffs     $FISH_PATH
abbr -ag d       cd ~/Desktop
abbr -ag c       cd ~/code
abbr -ag l       cd ~/Downloads
abbr -ag o       cd ~/Documents
abbr -ag cfdf    $EDITOR $DOTFILES/bootstrap/bootstrap.sh
abbr -ag cff     $EDITOR $INIT_FILE
abbr -ag cfb     $EDITOR $BASH_FILE
abbr -ag cfe     $EDITOR $EMACS_FILE
abbr -ag srcb    source $BASH_FILE
abbr -ag srcv    source $VIM_FILE
abbr -ag fishit  nvim $INIT_FILE
abbr -ag bashit  nvim $BASH_FILE
abbr -ag vimmit  nvim $VIM_FILE
abbr -ag opendf  open $DOTFILES
abbr -ag openff  open $FISH_PATH

# general
abbr -ag ll  ls -alPh
abbr -ag shutdown  sudo shutdown -h now
abbr -ag showit  "defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
abbr -ag hideit  "defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# ssh
abbr -ag thegrepper   "ssh root@159.65.76.75"
abbr -ag projection   "ssh projection@172.16.1.101"
abbr -ag marketplace  "ssh jarrett@marketplace9.prod"
abbr -ag ga cashdash1 "cd ~/.ssh && ssh -i cashdash.pem ec2-user@10.21.2.170"
abbr -ag ga cashdashcelery "cd ~/.ssh && ssh -i cashdash.pem ec2-user@10.21.4.92"

# git
abbr -ag ga     git add -A
abbr -ag gs     git status
abbr -ag gco    git checkout
abbr -ag gcm    git commit -m
abbr -ag gpom   git push origin master
abbr -ag ghash  clipboard_git_hash

# dbs
# launch dbs automatically at login:
#brew services start mysql
#brew services start mysql@5.6
#brew services start postgresql
#abbr -ag sqlgo   (which mysql).server start
#abbr -ag sqlno   (which mysql).server stop
#abbr -ag sqldoh  (which mysql).server restart
abbr -ag pggo  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
abbr -ag pgno  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# path
set -x PATH /usr/local/bin (string match -v /usr/local/bin $PATH)
status --is-interactive; and source (rbenv init -|psub)

# fzf
set -xg FZF_LEGACY_KEYBINDINGS 1
set -xg FZF_DEFAULT_OPTS "--extended --height 40"
set -xg FZF_FIND_FILE_OPTS --reverse --inline-info
set -xg FZF_ENABLE_OPEN_PREVIEW 1
set -xg FZF_COMPLETE 2
#set -xg FZF_PREVIEW_FILE_CMD "head -n 10"
set -xg FZF_DEFAULT_COMMAND = 'ag --nocolor -H -g "" 2>/dev/null'
set -xg FZF_PREVIEW_FILE_CMD "bat"
set -xg FZF_PREVIEW_DIR_CMD "ls"

#set -xg FZF_DEFAULT_OPTS "
#	--color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
#  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
#"

theme_gruvbox dark medium

