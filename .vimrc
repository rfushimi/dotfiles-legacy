:syntax on

" typos
:command Q q
:command W w
:command Wq wq
:command WQ wq

:autocmd BufNewFile,BufRead COMMIT_EDITMSG set filetype=gitcommit

set backspace=indent,eol,start