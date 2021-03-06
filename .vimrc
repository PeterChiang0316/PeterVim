syntax on
syntax enable

" Always show the current position
set ru

" Show the line number
set number

"show cursor line, column, percentage
set ruler

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

set t_Co=256

"set color scheme
"colorscheme monokai
"colorscheme evening
"colorscheme desert
colorscheme peter

"use molokai with monokai's bg color
let g:molokai_original = 1
let g:rehash256 = 1

execute pathogen#infect()
call pathogen#helptags()


"Nerdtree-related
"auto close if nerd tree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Make NERDTree panel on the right side
let NERDTreeWinPos="right"

"map a key to open Nerdtree
nnoremap <C-f> :NERDTreeToggle<CR>


"open NERDTree automatically when vim stars up
autocmd vimenter * NERDTree

"auto focus on files when opening NERDTree
autocmd vimenter * wincmd p

"Tagbar related
nnoremap <F8> :TagbarToggle<CR>
let tagbar_left=1

"ctag related
set tags=tags;
"cscope related
"automatic set cscope DB path
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()

let g:loaded_youcompleteme = 1


