alias ls="ls -G"
alias ll="ls -laG"

g4d () {
	cd "/google/src/cloud/fushimi/$*/google3"
}

if [[ `arch` = "arm64" ]]
if [[ `arch` = "x86" ]]

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"