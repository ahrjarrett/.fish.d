set --export --global  EDITOR     nvim
set --export --global  DOTFILES   $HOME/dotfiles
set --export --global  FISH_PATH  $HOME/fish
set --export --global  FISH_FILE  $FISH_PATH/config.fish
set --export --global  BASH_FILE  $HOME/.bash_profile
set --export --global  VIM_FILE   $HOME/nvim/init.vim
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
if not set -q __aj__fish_abbreviations_set
  source $FISH_PATH/functions/set_abbr.fish
  set -U __aj__fish_abbreviations_set true
end

# Set PATH
if not set -q __aj__fish_path_set
  source $FISH_PATH/functions/set_path.fish
  set -U __aj__fish_path_set true
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



#function __check_nvm --on-variable PWD --description 'Do nvm stuff'
#  set node_version (nvm version)
#
#  if test -f .nvmrc
#    set nvmrc_node_version (nvm version (cat .nvmrc))
#
#    if [ $nvmrc_node_version = "N/A" ]
#      nvm install
#    else if [ $nvmrc_node_version != $node_version ]
#      nvm use
#    end
#  else if [ $node_version != (nvm version default) ]
#    echo Reverting to nvm default version
#    nvm use default
#  end
#end
#
## To check current dir upon Fish session start
#__check_nvm
fish_add_path "/opt/homebrew/bin"
