if has('vim_starting')
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

set nocompatible
set termguicolors

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

filetype plugin indent on

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'ap/vim-buftabline'
NeoBundle 'bling/vim-airline'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'qpkorr/vim-bufkill'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tommcdo/vim-exchange'
NeoBundle 'wellle/targets.vim'

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" vim-airline
set laststatus=2
let g:airline_theme='base2tone_eveningdark'
let g:airline#extensions#whitespace#enabled = 0

" NERDTree
map <C-b> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:NERDTreeWinSize = 22

" Backspace
set backspace=2
set backspace=indent,eol,start

set t_Co=256
colorscheme custom

syntax on
set mouse=a
set number
set clipboard=unnamedplus
autocmd VimLeave * call system("xsel -ib", getreg('+'))
set hidden
set nowrap
set sidescroll=1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

nmap <C-g> <Esc>
vmap <C-g> <Esc>
map <C-PageUp> :bprev<Enter>
map <C-PageDown> :bnext<Enter>
map <C-s> :w<Enter>
map <S-Up> 10k
map <S-Down> 10j
map <S-Left> 10h
map <S-Right> 10l

" Change cursor depending on mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Comments
nmap <C-_> gcc
vmap <C-_> gc
au FileType ocaml set commentstring=(*\ %s\ *)

" Expand region
map = <Plug>(expand_region_expand)
map - <Plug>(expand_region_shrink)

" Shifting
vno < <gv
vno > >gv
vno <tab> >gv
vno <C-S-tab> <gv

" Searching
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
map <C-f> /
map <C-h> :%s/

" Window switching
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Swap files
set swapfile
set directory=~/.vim/.tmp
set dir=~/.vim/.tmp
set backupdir=~/.vim/.tmp

" Disable beeping
set noeb vb t_vb=
