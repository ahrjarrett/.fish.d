abbr -a -U  dfs     $DOTFILES
abbr -a -U  ffs     $FISH_PATH
abbr -a -U  d       ~/Desktop
abbr -a -U  c       ~/code
abbr -a -U  l       ~/Downloads
abbr -a -U  o       ~/Documents
abbr -a -U  fishit  nvim $FISH_FILE
abbr -a -U  bashit  nvim $BASH_FILE
abbr -a -U  vimmit  nvim $VIM_FILE && clear

# commands
abbr -a -U  ll     ls -alF
abbr -a -U  ga     git add -A
abbr -a -U  gs     git status
abbr -a -U  gco    git checkout
abbr -a -U  gcm    git commit -m
abbr -a -U  gpo    git push origin
abbr -a -U  ghash  clipboard_git_hash

# databases
#abbr -a -U  sqlgo   (which mysql).server start
#abbr -a -U  sqlno   (which mysql).server stop
#abbr -a -U  sqldoh  (which mysql).server restart
#abbr -a -U  pggo    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
#abbr -a -U  pgno    launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

abbr -a -U  showit  "defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
abbr -a -U  hideit  "defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# ssh
abbr -a -U  thegrepper   "ssh root@159.65.76.75"
abbr -a -U  projection   "ssh projection@172.16.1.101"
abbr -a -U  marketplace  "ssh jarrett@marketplace9.prod"
abbr -a -U  cashdash1 "cd ~/.ssh && ssh -i cashdash.pem ec2-user@10.21.2.170"
abbr -a -U  cashdashcelery "cd ~/.ssh && ssh -i cashdash.pem ec2-user@10.21.4.92"

