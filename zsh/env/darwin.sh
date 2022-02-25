echo "Environment: darwin"
alias ls="ls -G"
alias ll="ls -laG"

g4d () {
	cd "/google/src/cloud/fushimi/$*/google3"
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
alias cot="open -a CotEditor"
