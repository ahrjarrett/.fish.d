function call_fzf
	bass ag --nocolor --ignore "!{.git,node_modules}/*" $argv[1] | fzf
  # bass ag --color $argv | fzf
end

### OLD INIT.FISH FZF CONFIG: ###
# set -xg FZF_LEGACY_KEYBINDINGS 1                         
# set -xg FZF_DEFAULT_OPTS "--extended --height 40"
# set -xg FZF_FIND_FILE_OPTS --reverse --inline-info
# set -xg FZF_ENABLE_OPEN_PREVIEW 1   
# set -xg FZF_COMPLETE 2            
# #set -xg FZF_PREVIEW_FILE_CMD "head -n 10"
# set -xg FZF_DEFAULT_COMMAND = 'ag --nocolor -H -g "" 2>/dev/null'
# set -xg FZF_PREVIEW_FILE_CMD "bat"
# set -xg FZF_PREVIEW_DIR_CMD "ls"
#                                
# #set -xg FZF_DEFAULT_OPTS "            
# #       --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108                                       
# #  --color info:108,prompt:109,spinner:108,pointer:168,marker:168                                 
# #"                   

