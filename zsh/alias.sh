# alias
alias du="du -h"
alias df="df -h"

alias ssh-keygen="ssh-keygen -t ed25519 -a 128"

alias dotfiles="code ~/dotfiles"
alias ud="update_dotfiles"
alias update_dotfiles="update_dotfiles"

# save current directory and source ~/.zshrc and get back to the directory
alias reload="pwd > ~/.zshrc_pwd; source ~/.zshrc; cd \`cat ~/.zshrc_pwd\`"

alias w="npx wrangler"

alias python3="rye run python3"