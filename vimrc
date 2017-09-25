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
set clipboard=unnamed           " sets system clipboard

""" VUNDLE SPECIFIC CONFIGURATION """



""" VUNDLE SPECIFIC CONFIGURATION END """
