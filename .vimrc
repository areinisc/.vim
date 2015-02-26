" Custom VIM Settings
" Alex Reinisch (2015)
" Vim 7.3 recommended
" ------------------------------------------------------------------------
" This work borrows HEAVILY from [Luke Maciak][a1] and his [.vim repo][a2].
" Thank you.
" [a1]: www.terminally-incoherent.com "Terminally Incoherent"
" [a2]: github.com/maciakl/.vim "maciakl's .vim"
" ------------------------------------------------------------------------

" ------------------------------------------------------------------------
" ======= Runtime Settings ========
" ------------------------------------------------------------------------
syntax on
filetype plugin indent on

" disable beeping
set noerrorbells
set visualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=

" enable mouse usage (all modes) in terminals
set mouse=a

" change the leader key to <space>
nnoremap <space> <nop>
let mapleader="\<space>"


" ------------------------------------------------------------------------
" ======= Swap Files ========
" ------------------------------------------------------------------------

set noswapfile     " suppress creation of swap files
set nobackup       " suppress creation of backup files
set nowb           " suppress creation of ~ files

" ------------------------------------------------------------------------
" ======= Filetypes ========
" ------------------------------------------------------------------------

" disable folding in Markdown files
let g:vim_markdown_folding_disabled=1

" Starting with Vim 7, the filetype of empty .tex files defaults to 'plaintex'
" instead of 'tex', which results in vim-latex not being loaded. This changes
" the default filetype back to 'tex':
let g:tex_flavor='latex'

" ------------------------------------------------------------------------
" ======= Pathogen ========
" ------------------------------------------------------------------------
" Plugin manager:
" Lets you store your plugins in individual folders inside the .vim/bundle
" directory (also as git submodules). This initializes it and loads all
" plugins:
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()


syntax enable
"let g:solarized_termcolors=256
if has('gui_running')
	colorscheme solarized
	set background=dark
"else
"	set background=light
endif
