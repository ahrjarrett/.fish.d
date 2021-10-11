echo "IN SET_ABBR"

abbr -a -U  dfs       $DOTFILES
abbr -a -U  ffs       $FISH_PATH
abbr -a -U  d         ~/Desktop
abbr -a -U  c         ~/code
abbr -a -U  l         ~/Downloads
abbr -a -U  o         ~/Documents
abbr -a -U  fishit    nvim $FISH_FILE
abbr -a -U  bashit    nvim $BASH_FILE
abbr -a -U  vimmit    nvim $VIM_FILE

# commands
abbr -a -U  ll        ls -alP
abbr -a -U  ga        git add -A
abbr -a -U  gs        git status
abbr -a -U  gb        git branch
abbr -a -U  gba       git branch -a
abbr -a -U  gco       git checkout
abbr -a -U  gcm       git commit -m \"
abbr -a -U  gpo       git push origin
abbr -a -U  ghash     clipboard_git_hash
abbr -a -U  shutdown  sudo shutdown -h now

# databases

#abbr -a -U  sqlgo    (which mysql).server start
#abbr -a -U  sqlno    (which mysql).server stop
#abbr -a -U  sqldoh   (which mysql).server restart
#abbr -a -U  pggo     launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
#abbr -a -U  pgno     launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

abbr -a -U  showit    "defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
abbr -a -U  hideit    "defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# once you've run the following command to create a git alias:
# git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)(%an)%Creset' --abbrev-commit"
abbr -a -U  glg       git lg


