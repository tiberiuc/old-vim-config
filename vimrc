
source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
"let &rtp = pathogen#join(&rtp, pathogen#glob_directories(.vim/bundle/*))

call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible 
set shiftwidth=4 
set tabstop=4 
set expandtab
set number 
set rnu 
syntax on 
set autoindent 
set smartindent 
set wrap "Wrap lines

"let coffee_compile_on_save = 1
let haml_convert_on_save = 1
let coffee_no_reserved_words_error = 1

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great! 
inoremap jj <Esc>

" Swap ; and :  Convenient. 
nnoremap ; :
"nnoremap : ; 

"Status line gnarliness 
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Next Tab
nnoremap <D-A-Right> gt

" Previous Tab
nnoremap <D-A-Left> gT

" Toggle number line mode
function! ToggleNuMode()
	if(&rnu == 1)
		set nu
	else
		set rnu
	endif
endfunc

nnoremap <C-L> :call ToggleNuMode()<cr>

" Autoload vimrc
autocmd BufWritePost .vimrc source %

" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmode=longest:full
set wildmenu

set cmdheight=2 "The commandbar height

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


set lbr
set tw=500


"for tabs
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
"set foldlevelstart=20
"set foldlevel=20

"au FileType javascript call JavaScriptFold()
"au FileType javascript setl fen
"au FileType javascript setl nocindent

"au FileType javascript imap <c-t> console.log();<esc>hi
"au FileType javascript imap <c-a> alert();<esc>hi

"au FileType javascript inoremap <buffer> $r return
"au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

"function! JavaScriptFold()
"    setl foldmethod=syntax
"    setl foldlevelstart=1
"    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

"    function! FoldText()
"    return substitute(getline(v:foldstart), '{.*', '{...}', '')
"    endfunction
"    setl foldtext=FoldText()
"endfunction

"Set space to toggle a fold
"nnoremap <space> za

"This keeps the current visual block selection active after changing indent with '<' or '>
vmap > >gv
vmap < <gv

"deschide nerdtree mai repede
nnoremap nd :NERDTree 

"salvez cu ww
nnoremap ww :w<cr>

let mapleader = ","

"got to line cu enter in loc de G
"nmap <CR> G

syntax match Tab /\t/
hi Tab gui=underline guifg=blue ctermbg=blue

set background=dark
let moria_style = 'dark'
colo moria
"colo peaksea
set guifont=Menlo:h13
let g:Powerline_symbols = 'fancy'

nmap <silent> <S-A-Up> :wincmd k<CR>
nmap <silent> <S-A-Down> :wincmd j<CR>
nmap <silent> <S-A-Left> :wincmd h<CR>
nmap <silent> <S-A-Right> :wincmd l<CR>

cd! ~/work/sitedity
