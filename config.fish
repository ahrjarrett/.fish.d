set -gx DOTFILES $HOME/dotfiles
set -gx FISH_PATH $HOME/fish
set -gx FISH_FILE $FISH_PATH/config.fish
set -gx BASH_FILE $HOME/.bash_profile
set -gx VIM_FILE $HOME/nvim/init.vim
set -gx EDITOR nvim
set -gx DOTENVENC_KEY Swear!23

set -gx GOOGLE_APPLICATION_CREDENTIALS $HOME/.config/gcloud/application_default_credentials.json

set -gx fish_escape_delay_ms 10

# Load env variables
if test -f $FISH_PATH/env.fish
  source $FISH_PATH/env.fish
end

# Load abbrevs
if not set -q fish_abbreviations_set
  source $FISH_PATH/functions/set_abbr.fish
  set -U fish_abbreviations_set true
end

function fish_greeting
end

# Better titles
#function fish_title
#  test (count $argv) -gt 0
#    and echo $argv[1]
#    or prompt_pwd
#  iterm2_prompt_mark
#end

### TURN ON FOR VIM NODE ONLY! ###
#set -q fish_escape_delay_ms 10
#
#fish_user_key_bindings

#rvm default

#source ~/.iterm2_shell_integration.(basename $SHELL)

### GCLOUD SDK
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/aj/ownlocal/two-step/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/aj/ownlocal/two-step/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/aj/ownlocal/two-step/node_modules/tabtab/.completions/sls.fish ]; and . /Users/aj/ownlocal/two-step/node_modules/tabtab/.completions/sls.fish
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aj/google-cloud-sdk/path.fish.inc' ]; . '/Users/aj/google-cloud-sdk/path.fish.inc'; end

# opam configuration
source /Users/aj/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
