function google3-comp () {
if [[ -n "${ZSH_VERSION}" ]]; then
  ### Zsh Completion
  fpath=(${FUCHSIA_SCRIPTS_DIR}/zsh-completion $fpath[@])
  # clear cached load of _path_files
  unfunction _path_files
  autoload -U _path_files
  # load and run compinit
  autoload -U compinit
  compinit

  ### Map paths that start // to $FUCHSIA_DIR
  function google3-accept-line() {
    # make a shorter version of $FUCHSIA_DIR using ~
    local short_dir=~/dev/iGMM

    BUFFER=${BUFFER/#\/\/depot\//$short_dir\/}
    # at the start of the line
    BUFFER=${BUFFER/#\/\//$short_dir\/}
    # anywhere in the line
    BUFFER=${BUFFER// \/\// $short_dir\/}
    
    local google3_dir=~/dev/iGMM/google3
    BUFFER=${BUFFER/#google3/$google3_dir\/}
    BUFFER=${BUFFER// google3\// $google3_dir\/}
    zle .accept-line
  }
  zle -N accept-line google3-accept-line
fi
}