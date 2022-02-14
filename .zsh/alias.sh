# alias

## update screenshots
alias updatess="sh /google/src/head/depot/google3/experimental/users/aberry/gmm/update_screenshots.sh"

## directory alias
alias Maps="cd /Users/fushimi/dev/iGMM2/google3/googlemac/iPhone/Maps"
alias cc="code /Users/fushimi/dev/iGMM2/google3/googlemac/iPhone/Maps/maps.code-workspace"
alias Maps2="cd /google/src/cloud/fushimi/remotecitc/google3/googlemac/iPhone/Maps"
alias gcert="rw hoshimiya.c.googlers.com"
# alias
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -al"
alias l="ls -al"

alias du="du -h"
alias df="df -h"

# Open with coteditor
alias ci="open -a CotEditor"
alias cot="open -a CotEditor"

# Open with sublime editor
alias si="open -a 'Sublime Text'"

# What's for su?
alias su="su -l"
alias localize="Tools/rewrite_localized_strings.py --convert json App/Resources/en_App.strings.json json App/Resources/en_App.strings.json"
alias amendd="hg fix; hg fiximport; localize; amend;"

alias ca="git commit -av"
alias co="git commit -v"
alias glog="git log --graph --decorate --oneline"
alias glogp="git log -p"
alias md="cd googlemac/iPhone/Maps"

alias rc="vi ~/.zshrc; source ~/.zshrc;"
alias "git diff"="git diff --relative"

# Fig alias
alias c="hg pickcheckout"
