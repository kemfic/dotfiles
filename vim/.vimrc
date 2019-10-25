" kemfic
" github.com/kemfic/setup/vim/.vimrc

call pathogen#infect()

colorscheme gruvbox "molokai
set background=dark
syntax enable

set tabstop=4
set shiftwidth=4
set softtabstop=4 " only plebs use tabs
set expandtab
set autoindent

set number " line numbers
set showcmd

set cursorline "highlights the line you're on

set wildmenu " autocomplete commands

set showmatch " highlight matching parens, brackets

set incsearch " search as you type
set hlsearch  " highlight matches

nnoremap <leader><space> :nohlsearch<CR> " stops highlighting after space

nnoremap gV `[v']

" your pinky will thank you later
inoremap jk <esc>

" move to beginning/end
nnoremap B ^
nnoremap E $


" allows cursor change in tmux mode
if exists('$tmux')
    let &t_si = "\<esc>ptmux;\<esc>\<esc>]50;cursorshape=1\x7\<esc>\\"
    let &t_ei = "\<esc>ptmux;\<esc>\<esc>]50;cursorshape=0\x7\<esc>\\"
else
    let &t_si = "\<esc>]50;cursorshape=1\x7"
    let &t_ei = "\<esc>]50;cursorshape=0\x7"
endif

execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xRight>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"
