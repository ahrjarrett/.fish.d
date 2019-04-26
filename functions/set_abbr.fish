function set_abbr --description 'set abbreviations'
  # first erase all existing abbreviations
  for ab in (abbr --l)
    abbr --erase "$ab"
  end
  source $FISH_PATH/abbr.fish
end
