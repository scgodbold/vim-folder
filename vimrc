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

if has("autocmd")
	filetype plugin indent on
endif

set showmatch
set number
set ts=2
set shiftwidth=2

" Folding
noremap <space> za
set foldmethod=indent
set foldlevel=99

" Map window split movements
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Apperance
set background=dark
syntax enable
colorscheme hybrid
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
augroup END

" Addons go below Here
" --------------------
" NERDTree
map <leader>nt :NERDTree<CR>
autocmd vimenter * if !argc() | NERDTree | endif

" Jedi Vim
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-c>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"
