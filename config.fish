#!/opt/homebrew/bin/fish

set --export --global  EDITOR     emacs
set --export --global  DOTFILES   ~/dotfiles
set --export --global  BASH_FILE  ~/.bash_profile
set --export --global  VIM_FILE   ~/nvim/init.vim
set --export --global  FISH_PATH  ~/fish
set --export --global  FISH_FILE  $FISH_PATH/config.fish
set --export --global  COMPANY    bondlink


set --export --global fish_escape_delay_ms 10

# Load env variables
if test -f $FISH_PATH/.env.fish
  source $FISH_PATH/.env.fish
end

# Load work config
source $FISH_PATH/work/$COMPANY.fish

# configure asdf
# source (brew --prefix asdf)/asdf.fish

# Load abbrevs
if not set -q  _personal_fish_abbreviations_loaded
  source       $FISH_PATH/abbr.fish
  set -U       _personal_fish_abbreviations_loaded true
end

# Set PATH
if not set -q  _personal_fish_path_loaded
  source       $FISH_PATH/path.fish
  set -U       _personal_fish_path_set
end

function fish_greeting
end

# load fnm (node version manager written in rust)
fnm env | source

# Better titles
#function fish_title
#  test (count $argv) -gt 0
#    and echo $argv[1]
#    or prompt_pwd
#  iterm2_prompt_mark
#end

### TURN ON FOR VIM NODE ONLY! ###
#set -q fish_escape_delay_ms 10
#fish_user_key_bindings

#source ~/.iterm2_shell_integration.(basename $SHELL)

fish_add_path "/opt/homebrew/bin"

# pnpm
set -gx PNPM_HOME "/Users/andrewjarrett/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
