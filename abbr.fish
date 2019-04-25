abbr -ag dfs     $DOTFILES
abbr -ag ffs     $FISH_PATH
abbr -ag d       cd ~/Desktop
abbr -ag c       cd ~/code
abbr -ag l       cd ~/Downloads
abbr -ag o       cd ~/Documents
abbr -ag fishit  nvim $INIT_FILE
abbr -ag bashit  nvim $BASH_FILE
abbr -ag vimmit  nvim $VIM_FILE

# commands
abbr -ag ll  ls -alP
abbr -ag ga     git add -A
abbr -ag gs     git status
abbr -ag gco    git checkout
abbr -ag gcm    git commit -m 
abbr -ag gpo    git push origin 
abbr -ag ghash  clipboard_git_hash

# databases
#abbr -ag sqlgo   (which mysql).server start
#abbr -ag sqlno   (which mysql).server stop
#abbr -ag sqldoh  (which mysql).server restart
#abbr -ag pggo  launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
#abbr -ag pgno  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

abbr -ag showit  "defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
abbr -ag hideit  "defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# ssh
abbr -ag thegrepper   "ssh root@159.65.76.75"
abbr -ag projection   "ssh projection@172.16.1.101"
abbr -ag marketplace  "ssh jarrett@marketplace9.prod"
abbr -ag ga cashdash1 "cd ~/.ssh && ssh -i cashdash.pem ec2-user@10.21.2.170"
abbr -ag ga cashdashcelery "cd ~/.ssh && ssh -i cashdash.pem ec2-user@10.21.4.92"

