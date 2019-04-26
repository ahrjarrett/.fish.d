function fish_prompt
  test $status -ne 0;
    and set -l colors 600 900 c00
    or set -l colors 666 aaa eee

  set -l pwd (prompt_pwd)
  set -l base (basename "$pwd")

  set -l expr "s|~|"(__color_off)(__color_bg)(set_color a89b86)"~""|g; \
               s|/|"(__color_snd)"/"(__color_off)(__color_bg)(set_color 928374)"|g;  \
               s|"$base"|"(__color_fst)$base"|g"

  echo -n (__color_bg)(__color_trd)"☭ " (echo (__color_trd)"$pwd" | sed -e $expr)
  echo -n (set_color B3A06D)" -_-;; "(__color_off)
end


#♖ λ ☭
# for color in $colors
#   echo -n (set_color $color)">"
# end
#echo -n (set_color bdae93)" -> "
