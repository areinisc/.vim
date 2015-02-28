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
" ======= Line Numbers ========
" ------------------------------------------------------------------------

if v:version >= 703
	set relativenumber
	
	function! g:ToggleNuMode()
		if(&rnu == 1)
			set number
			let &rnu=0
		else
			set relativenumber
			set nonumber
		endif
	endfunc

	nnoremap <f5> :call g:ToggleNuMode()<cr>
else
	set number
endif

set nopaste

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

" ------------------------------------------------------------------------
" ======= Solarized ========
" ------------------------------------------------------------------------

"" Solarized color scheme setup:
"if has('gui_running')
    "set background=light
"else
    "set t_Co=256
    "let g:solarized_termolors=256
    "set background=light
"endif

"colorscheme solarized
"----vvv this is my shit dawg vvv---"
if v:version >= 703
    set colorcolumn=80
endif

"syntax enable
if has('gui_running')
    colorscheme solarized
    set background=light
else
    set t_Co=256
    let g:solarized_termcolors=256
    "let g:solarized_contrast="normal"
    let g:solarized_termtrans=1
    set background=light
    colorscheme solarized
endif

highlight ColorColumn guibg=lightyellow ctermbg=227

" ------------------------------------------------------------------------
" ======= Airline ========
" ------------------------------------------------------------------------

set ttimeoutlen=50                           " removes pause when leaving insert mode
set laststatus=2                             " forces statusline to appear all the time
let g:airline#extensions#tabline#enabled = 1 " displays all buffers when one tab is open
let g:airline_theme='solarized'                " sets airline_theme to solarized theme
