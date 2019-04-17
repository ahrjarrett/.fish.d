function fish_prompt
  test $status -ne 0;
  and set -l color c00
  or set -l color f0f0f0

  function color_off; set_color normal; end
  function color_home; set_color -o fa0; end
  function color_sep; color_home; end
  function color_base; color_home; end


  set -l pwd (prompt_pwd)
  set -l base (basename $pwd)

  set -l expr "s|~|"(__batman_color_fst)"☀︎"(__batman_color_off)"|g; \
               s|/|"(__batman_color_snd)"/"(__batman_color_off)"|g;  \
               s|"$base"|"(__batman_color_fst)$base(__batman_color_off)" |g"


  echo -n (echo $pwd | sed -e "$expr")(color_off)


  echo -n (set_color $color)"->>"
  echo -n " "
end

### Original code:
# test $status -ne 0;
# and set -l colors 600 900 c00
# or set -l colors 333 666 aaa

# for color in $colors
#   echo -n (set_color $color)"O"
# end
