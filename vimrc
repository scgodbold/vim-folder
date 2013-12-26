" Make it uncompatible with Vi becuase this is Vim goddamnit
set nocompatible
set t_Co=256

" Activate Pathogen
call pathogen#infect()

" Reset Leader
let mapleader=','

" Remap : to ; save infinite key strokes
nnoremap ; :

" Text formatting
if has("syntax")
	syntax on
endif

" Apperance
set background=dark
syntax enable
