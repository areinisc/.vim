runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
"let g:solarized_termcolors=256
if has('gui_running')
	colorscheme solarized
	set background=dark
"else
"	set background=light
endif
