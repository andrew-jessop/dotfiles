" Plugins installed via vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Coding tools
Plug 'JuliaEditorSupport/julia-vim'
Plug 'kdheepak/JuliaFormatter.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'

" Themes
Plug 'franbach/miramare'
Plug 'arzg/vim-colors-xcode'
Plug 'smallwat3r/vim-simplicity'

call plug#end()

" Settings
syntax enable           " Show syntax highlighting
set number              " Show the line numbers on the left side.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
set autoindent          " Automatic indentation
set noruler             " Remove the ruler by default
set laststatus=0        " Autohide the status bar
set noshowcmd           " Remove the last executed command after completion

" Theme settings
set termguicolors
colorscheme simplicity 

" Keep terminal background settings
"hi Normal     ctermbg=NONE guibg=NONE
"hi LineNr     ctermbg=NONE guibg=NONE
"hi SignColumn ctermbg=NONE guibg=NONE

" Custom keybindings
nnoremap <silent> \ff :<C-u>call JuliaFormatter#Format(0)<CR>
nnoremap <silent> \tt :tabnew<CR>
nnoremap <silent> \xx :tabclose<CR>
nnoremap <silent> <buffer> <F9> :w !julia<CR>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

