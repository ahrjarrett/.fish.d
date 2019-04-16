function clipboard_git_hash --description "copy commit hash from master has to clipboard (pbcopy)"
  echo "Copying commit hash from master branch to clipboard"
  git rev-parse HEAD && git rev-parse HEAD | pbcopy
end

