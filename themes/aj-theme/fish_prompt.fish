function fish_prompt
  test $status -ne 0;
    and set -l colors 600 900 c00
    or set -l colors 666 aaa eee

  set -l pwd (prompt_pwd)
  set -l base (basename "$pwd")

  set -l expr "s|~|"(__color_fst)"~@"(__color_off)"|g; \
               s|/|"(__color_snd)"/"(__color_off)"|g;  \
               s|"$base"|"(__color_fst)$base(__color_off)" |g"

  echo -n (echo "$pwd" | sed -e $expr)(__color_off)

  # for color in $colors
  #   echo -n (set_color $color)">"
  # end

  #echo -n (__color_snd)"#_( "
  echo -n (set_color aaa)"#_( "
end