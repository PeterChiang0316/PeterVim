syntax on

" Always show the current position
set ru

" Show the line number
set number

" highlight the search result
set hls

" show the cursor line
set cursorline

" search ignores cases
set incsearch

" set the status bar height to 2
set cmdheight=2

" set the paste mode on 
set paste

" set auto indent
set ai

" show the match bracket
set showmatch

" the duration of blink in matching bracket
set mat=2

"search not sensitive to case
set ic

"expand tab to spaces
set expandtab

"number of space indent
set tabstop=4
set shiftwidth=4

"folding 
set foldenable
"default close
set foldlevel=20
set foldmethod=syntax

"key mapping
nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprev<CR>
nnoremap <C-c> zo
nnoremap <C-v> zc
nnoremap <C-d> za



