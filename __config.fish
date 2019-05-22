### PATH on Arch as of 5/15/19 ###
#/usr/local/rvm/gems/ruby-2.3.7/bin /usr/local/rvm/gems/ruby-2.3.7@global/bin /usr/local/rvm/rubies/ruby-2.3.7/bin /usr/local/sbin /usr/local/bin /usr/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl /usr/local/rvm/bin /root/.local/bin
###

set -gx DOTFILES $HOME/dotfiles
set -gx FISH_PATH $HOME/fish.d
set -gx FISH_FILE $FISH_PATH/config.fish
set -gx BASH_FILE $HOME/.bash_profile
set -gx VIM_FILE $HOME/nvim/init.vim
set -gx EDITOR nvim

# Load env variables
if test -f $FISH_PATH/env.fish
  source $FISH_PATH/env.fish
  set -xg PATH $HOME/go/bin $PATH
end

# Autoload abbrevs
if test $fish_abbreviations_set = false
  source $FISH_PATH/abbr.fish
  set -gx fish_abbreviations_set true
end

function fish_greeting
end

# Better titles
function fish_title
  test (count $argv) -gt 0
    and echo $argv[1]
    or prompt_pwd
end


