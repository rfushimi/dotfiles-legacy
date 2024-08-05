DOTFILES=~/dotfiles
DOTFILES_SHELL=zsh

for file in $DOTFILES/zsh/*.sh; do 
    source "$file"
done

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/fushimi/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/fushimi/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/fushimi/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/fushimi/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<


# Setup go/hi #!>>HI<<!#
source /etc/bash.bashrc.d/shell_history_forwarder.sh #!>>HI<<!#
