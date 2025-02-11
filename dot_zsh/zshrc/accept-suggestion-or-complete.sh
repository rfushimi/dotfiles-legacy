function accept-suggestion-or-complete() {
  # autosuggestion が表示されていれば (ZSH_AUTOSUGGEST_STR が空でなければ) それを受け入れる
  if [[ -n "$ZSH_AUTOSUGGEST_STR" ]]; then
    zle autosuggest-accept
  else
    zle complete-word
  fi
}
