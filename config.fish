# Load env variables
if test -f ~/.env.fish
  source ~/.env.fish
end

# Load abbrevs
if test $fish_abbreviations_set = false
  set_abbr
  set -U fish_abbreviations_set true
end

function fish_greeting
end

# Better titles
function fish_title
  test (count $argv) -gt 0
    and echo $argv[1]
    or prompt_pwd
end

set -gx DOTFILES $HOME/dotfiles
set -gx FISH_PATH $HOME/fish.d
set -gx FISH_FILE $FISH_PATH/config.fish
set -gx BASH_FILE $HOME/.bash_profile
set -gx VIM_FILE $HOME/nvim/init.vim
set -gx EDITOR nvim

# meant for Linux!
source ~/.profile
source ~/.iterm2_shell_integration.fish
source $FISH_PATH/abbr.fish

