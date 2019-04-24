function call_fzf
	bass ag --nocolor --ignore "!{.git,node_modules}/*" $argv[1] | fzf
  # bass ag --color $argv | fzf
end

