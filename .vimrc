" Custom VIM Settings
" Alex Reinisch (2015)
" Vim 7.3 recommended
" ------------------------------------------------------------------------
" This work borrows HEAVILY from [Luke Maciak][a1] and his [.vim repo][a2].
" Thank you.
" [a1]: www.terminally-incoherent.com "Terminally Incoherent"
" [a2]: github.com/maciakl/.vim "maciakl's .vim"
" ------------------------------------------------------------------------

"======= Runtime Settings ========
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
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


syntax enable
"let g:solarized_termcolors=256
if has('gui_running')
	colorscheme solarized
	set background=dark
"else
"	set background=light
endif
