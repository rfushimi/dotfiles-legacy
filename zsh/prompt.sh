
case "${DOTFILES_SHELL}" in
zsh*)
    # History
    PROMPT='%F{'$TERM_COLOR'}%m%f[%T] %F{cyan}%~%f $ '
    # 色の設定
    export LSCOLORS=Exfxcxdxbxegedabagacad
    # 補完時の色設定
    export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
    ;;
bash*)
    # assume Bash
    export PS1="\[\e[35m\]\h\[\e[m\][\A] \[\e[36m\]\w\[\e[m\] \\$ "
    ;;
esac
