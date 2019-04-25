# Load env variables
if test -f ~/.env.fish
  source ~/.env.fish
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
set -gx FISH_FILE $HOME/fish.d/config.fish
set -gx BASH_FILE $HOME/.bash_profile
set -gx VIM_FILE $HOME/nvim/init.vim
set -gx EDITOR nvim

theme_gruvbox dark medium
