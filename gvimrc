let &t_Co=256                   " allow 256 colour
syntax enable                   " enable syntax highlighting

set nu                          " display line numbers
set rnu                         " display relative line numbers
set tabstop=4                   " sets a number of spaces per TAB
set shiftwidth=4                " sets a number of spaces to use for each step of autoindent
set softtabstop=4               " a combination of spaces and tabs are used to simulate tab stops at a width other than the (hard)tabstop
set expandtab                   " use the appropriate number of spaces to insert a <Tab> in insert mode
set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8
set showcmd                     " display incomplete commands
set virtualedit=onemore         " allow for cursor beyond last character
set history=1000                " Store a ton of history (default is 20)
set backspace=indent,eol,start  " backspace through everything in insert mode
set showmode                    " display the current mode
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set wrap                        " wrap long lines
set laststatus=2                " always display a statusline
set clipboard=unnamedplus       " sets system clipboard
set spell spelllang=en_au       " enables spellcheck
set path+=**                    " searches down into sub-folders


hi clear SpellBad
hi clear SpellLocal
hi clear SpellCap
hi SpellBad cterm=underline ctermfg=red guifg=red
hi SpellLocal cterm=underline ctermfg=green guifg=green
hi SpellCap cterm=underline ctermfg=green guifg=green

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Create new tag alias
" - ^[ : go to tag
" - g^[ : list all matching tags
" - ^t : back up the tag stack
command! MakeTags !ctags -R --python-kinds=-i .

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Enable groovy syntax highlight for Jenkinsfiles
au BufNewFile,BufRead Jenkinsfile setf groovy

let base16colorspace=256
colorscheme base16-classic-dark

" Syntastic configuration
let g:syntastic_python_checkers=['flake8']

" Vim Autoformat configuration
noremap <F1> :Autoformat<CR>
noremap <F2> :RemoveTrailingSpaces<CR>

""" VUNDLE SPECIFIC CONFIGURATION
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'Chiel92/vim-autoformat'
Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""" VUNDLE SPECIFIC CONFIGURATION END
