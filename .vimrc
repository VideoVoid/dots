" Plugins
 call plug#begin('~/.vim/plugged')
 Plug '~/.vim/plugged/vim-scripts/AutoComplPop'
 Plug '~/.vim/plugged/vim-scripts/lightline.vim'
 Plug '~/.vim/plugged/vim-scripts/ultisnips'
 Plug '~/.vim/plugged/vim-scripts/vim-snippets'
 Plug '~/.vim/plugged/vim-scripts/auto-pairs/'
 call plug#end() 

" Basic sets
 set title
 set number relativenumber
 set noshowmode
 autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
 set path+=.,,** 
 set backspace=indent,eol,start
 "setlocal spell!
 " Shrink tab size to 4 spaces
 set tabstop=4
 set shiftwidth=4
 set expandtab

" Snippets config
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Autocomplete
 set complete+=kspell 
 set completeopt=menuone,longest
 set wildmenu
 set wildmode=longest,list,full
 set shortmess+=c

" When the filetype is FILETYPE then make AutoPairs only match for parenthesis
" au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
" au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})

" Status Line
 set laststatus=2
 let g:lightline = {
       \ 'colorscheme': 'wombat',
       \ }

" Cursor change with modes
 let &t_SI = "\e[6 q"
 let &t_EI = "\e[2 q"

" Colors
 hi Pmenu ctermfg=White ctermbg=Black
 hi LineNr ctermfg=Black ctermbg=LightGrey
 hi LineNrAbove ctermfg=White ctermbg=DarkGrey
 hi LineNrBelow ctermfg=White ctermbg=Black
 hi MatchParen ctermfg=Black

" Keybindings/remap
  " Create new line without insert
 nnoremap <Leader>o o<Esc>
 nnoremap <Leader>O O<Esc>
  " Create new tab with ctrl+t
 nnoremap <silent> <C-t> :tabnew<CR>
 nnoremap <silent> <C-1> :tabprevious<CR>






