set -Ux         BREW_PATH    /opt/homebrew/bin
fish_add_path   $BREW_PATH
set -Ux         DOOM_PATH    $HOME/.emacs.d/bin
fish_add_path   $DOOM_PATH
fish_add_path   /opt/bin

set -Ux JAVA_HOME /Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home
fish_add_path $JAVA_HOME/bin

fish_add_path $BREW_PATH
fish_add_path $DOOM_PATH
fish_add_path /opt/bin
fish_add_path $HOME/.cargo/bin

###########
### FNM ###
###########

# Run `fnm env` to generate these next lines:
# set -gx PATH "/Users/aj/Library/Caches/fnm_multishells/18725_1659270930353/bin" $PATH;
# set -gx FNM_MULTISHELL_PATH "/Users/aj/Library/Caches/fnm_multishells/18725_1659270930353";
set -gx FNM_VERSION_FILE_STRATEGY "local";
set -gx FNM_DIR "/Users/aj/Library/Application Support/fnm";
set -gx FNM_LOGLEVEL "info";
set -gx FNM_NODE_DIST_MIRROR "https://nodejs.org/dist";
set -gx FNM_ARCH "arm64";

fnm env | source
