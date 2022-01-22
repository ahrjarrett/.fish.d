set -Ux BREW_PATH /opt/homebrew/bin
set -Ux DOOM_PATH $HOME/.emacs.d/bin

# set -Ux NPM_PATH $HOME/.npm/bin
# set -Ux NVM_DIR $HOME/.nvm

fish_add_path /opt/bin
fish_add_path BREW_PATH
fish_add_path DOOM_PATH

# fish_add_path NPM_PATH
# fish_add_path NVM_DIR
