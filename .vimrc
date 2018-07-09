execute pathogen#infect()

let g:airline_powerline_fonts = 1

set laststatus=2

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

set clipboard=unnamed

map <F12> :call ToggleMouseMode()<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :%s/\s\+$//e<CR>
map <F4> <Esc>Orequire 'pry'; binding.pry
map <F5> <Esc>:set cursorline! cursorcolumn!<CR>
map <F6> <Esc>:SyntasticCheck<CR>


set splitright
set splitbelow

colorscheme grb256

set smartcase

set colorcolumn=120

set wildmenu
set wildmode=full
set backspace=indent,eol,start

highlight ExtraWhitespace ctermbg=236 guibg=#262D51
match ExtraWhitespace /\s\+$/

autocmd VimEnter,Colorscheme * :hi Visual ctermbg=238
autocmd VimEnter,Colorscheme * :hi ColorColumn ctermbg=234
autocmd VimEnter,Colorscheme * :hi CursorColumn ctermbg=234
autocmd VimEnter,Colorscheme * :hi Pmenu ctermbg=236
autocmd VimEnter,Colorscheme * :hi PmenuSel ctermbg=darkblue ctermfg=255
autocmd VimEnter,Colorscheme * :hi StatusLine ctermbg=lightblue ctermfg=black
autocmd VimEnter,Colorscheme * :hi StatusLineNC ctermbg=234 ctermfg=white
autocmd QuickFixCmdPost *grep* cwindow

au BufNewFile,BufRead *.ui set filetype=ruby
au BufNewFile,BufRead *.scss set filetype=css

let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

let g:ackprg = 'ag --nogroup --nocolor --column'

let g:vim_json_syntax_conceal = 0
set rtp+=/home/developer/.linuxbrew/opt/fzf
nmap ; :Files<CR>

let g:gitgutter_realtime = 0

" let g:indentLine_faster = 1
let g:indentLine_enabled = 0
