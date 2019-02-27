" kemfic
" github.com/kemfic/setup/vim/.vimrc

colorscheme molokai
syntax enable

set tabstop=2
set softtabstop=2 " only plebs use tabs
set expandtab

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

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
