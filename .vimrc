execute pathogen#infect()

filetype plugin indent on

syntax enable

set tabstop=2             " Tab is 2 chars long
set shiftwidth=2          " Indent/Outdent by 2 spaces
set expandtab

set number

set incsearch             " Show match when typing
set hlsearch              " Highlight all search matches

set smartindent

set scrolloff=5           " Scroll lines before edge of screen
set scrolljump=5           " Scroll lines before edge of screen

map <F12> :call ToggleMouseMode()<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :%s/\s\+$//e<CR>


set splitright
set splitbelow

colorscheme grb256

set smartcase

set colorcolumn=80

highlight ExtraWhitespace ctermbg=236 guibg=#262D51
match ExtraWhitespace /\s\+$/

let g:indent_guides_enable_on_vim_startup = 1

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=NONE
autocmd VimEnter,Colorscheme * :hi Visual ctermbg=238
autocmd VimEnter,Colorscheme * :hi ColorColumn ctermbg=234
autocmd VimEnter,Colorscheme * :hi Pmenu ctermbg=236
autocmd VimEnter,Colorscheme * :hi PmenuSel ctermbg=darkblue ctermfg=255
autocmd VimEnter,Colorscheme * :hi StatusLine ctermbg=lightblue ctermfg=black
autocmd VimEnter,Colorscheme * :hi StatusLineNC ctermbg=234 ctermfg=white

au BufNewFile,BufRead *.ui set filetype=ruby
