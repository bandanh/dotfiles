execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme koehler

set t_Co=256
set laststatus=2

set number

let mapleader = ','
map <leader>k <c-_><c-_>

let g:indent_guides_auto_colors = 0
" let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=17
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=18
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=31
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=25
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=white
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=lightgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=grey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey


set ignorecase
set autoindent
" set ts=4 sts=4 sw=4 expandtab
set tabstop=4 shiftwidth=4 noexpandtab "noexpandtab for tab expandtab for space
set fileencoding=utf-8
set encoding=utf-8
set backspace=indent,eol,start
set list
set listchars=tab:*\
"  set listchars=tab:»-,trail:·,nbsp:⋅,eol:¬

" abbreviations
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Q! q!
cnoreabbrev Tabe tabe
cnoreabbrev e tabedit

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlP'

map <C-n> :NERDTreeToggle<CR>
let g:user_emmet_leader_key='<c-z>'

" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

vnoremap <silent> <Enter> :EasyAlign<cr>

function! GFM()
  let langs = ['ruby', 'yaml', 'vim', 'c']
  for lang in langs
    unlet b:current_syntax
    silent! exec printf("syntax include @%s syntax/%s.vim", lang, lang)
    exec printf("syntax region %sSnip matchgroup=Snip start='```%s' end='```' contains=@%s",
    \ lang, lang, lang)
  endfor
  let b:current_syntax='mkd'
  syntax sync fromstart
endfunction

autocmd BufWritePre * :%s/\s\+$//e

set list listchars=tab:»-,trail:·,extends:»,precedes:«

let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
