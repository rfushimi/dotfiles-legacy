case "${DOTFILES_SHELL}" in
zsh*)
    echo "Using Zsh"
    # History
    HISTFILE=~/.zsh_history
    HISTSIZE=100000
    SAVEHIST=100000

    setopt HIST_FIND_NO_DUPS
    setopt share_history
    setopt hist_reduce_blanks

    # Ignore blank
    setopt SH_WORD_SPLIT

    # Options
    autoload -Uz colors ; colors
    autoload -Uz compinit ; compinit

    setopt auto_cd
    setopt correct
    cdpath=(.. ~ ~/dev ~/dev/experimental/google3/experimental/users/fushimi)
    ;;
bash*)
    # assume Bash
    echo "Using bash"
    PROMPT_DIRTRIM=2
    function share_history {
        history -a
        history -c
        history -r
        
    }

    PROMPT_COMMAND='share_history'
    shopt -u histappend
    export HISTSIZE=2000

    shopt -s autocd

    _suffix_vim=(md markdown txt text tex cc c C cxx h hh java py rb sh)
    command_not_found_handle () {
    if [ -f "$1" ];then
        if echo " ${_suffix_vim[*]} "|grep -q "${1##*.}";then
        echo "$cmd is a file, open $cmd with vi..."
        vi "$1"
        return $?
        fi
    fi
    echo "bash: $1: command not found"
    return 127
    }
    ;;
esac

# echo -ne '\033]1337;SetColors=bg=000\a' # to black
