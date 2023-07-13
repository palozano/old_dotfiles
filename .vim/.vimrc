set nocompatible
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set autoread
set hidden

"let g:netrw_browse_split = 4
set number
"set relativenumber
colorscheme darcula
set cursorline
highlight Cursor guifg=black guibg=orange
syntax enable
set re=0

set ruler
set wildmenu
set noerrorbells
set visualbell
set mouse=a
set title
" unsets the last search pattern pressing return
nnoremap <silent> <CR> :noh<CR><CR>

"set noswapfile
set directory=$HOME/.vim/swp//
"set nobackup
"set nowb
set undodir=$HOME/.vim/undodir

set autoindent
filetype plugin indent on
set tabstop=4
set expandtab

set incsearch
set hlsearch
set ignorecase
set smartcase

set encoding=utf-8
set linebreak
set scrolloff=3

set confirm
"set nomodeline  "ignore file's mode lines, uses vimrc config

set path+=**

if has('gui_running')
  set guifont=FiraMono_Nerd_Font:h14
endif

"set spell
"set spelllang=de

" Better status line
" status bar colors
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" status bar itself
set laststatus=2
set statusline=
" set statusline+=(file\ ->\ %F) 
set statusline+=%1*(%F)
set statusline+=%1*%m%r%h%w                         " modified, read-only, write
set statusline+=%2*\ %{FugitiveStatusline()}        " git branch
set statusline+=%=                                  " switch to right side
set statusline+=%2*(%{''.(&fenc!=''?&fenc:&enc).''} " encoding
set statusline+=\ %{&ff}/%Y)\                       " fileformat and filetype
set statusline+=%1*(col:\ %c\,\ ln:\ %l/%L)         " position in file

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad

" Better leader key
let mapleader="\<Space>"

" Remaps
imap jj <Esc>
imap jk <Esc>

" Easier toggle of the explorer 
let g:netrw_winsize = 15
nmap <Leader>e :Lexplore<CR>

" Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" =======
" CONFIGS
" =======

" GitGutter config
" faster update time
set updatetime=250
" Jump between hunks
nmap <Leader>gn <Plug>(GitGutterNextHunk)  " git next
nmap <Leader>gp <Plug>(GitGutterPrevHunk)  " git previous
" Hunk-add and hunk-revert for chunk staging
nmap <Leader>gs <Plug>(GitGutterStageHunk)  " git add (chunk)
nmap <Leader>gu <Plug>(GitGutterUndoHunk)   " git undo (chunk)

" Easy-align config
nmap <Leader>ga <Plug>(EasyAlign)
xmap <Leader>ga <Plug>(EasyAlign)

" Twiggy
" nmap <Leader>b <Plug>(Twiggy)
nmap <Leader>gb :Twiggy<CR>

" Installed plugins with Vim's plugin manager:
" GitGutter
" Fugitive.vim
" Surround.vim
" Repeat.vim
" Commentary.vim
" Sensible.vim
" vim-easy-align
" vim-twiggy.vim
"
"
" Follow this flow, with proper replacements:
"
" $ mkdir -p ~/.vim/pack/<GITHUB-USER>/start
" $ cd ~/.vim/pack/<GITHUB-USER>/start
" $ git clone https://github.com/<GITHUB-USER>/<PLUGIN>
" $ vim -u NONE -c "helptags <PLUGIN>/doc" -c q
"
