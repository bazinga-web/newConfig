" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" ===
" === Editor behavior
" ===
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set scrolloff=5
set tabstop=2
set autochdir
set ignorecase
set smartcase
set noerrorbells
set visualbell
set listchars=tab:»■,trail:■
set list

" ===
" === Basic Mappings
" ===
let mapleader=" "
noremap ; :

" Open the config file anytime
noremap <LEADER>v :e ~/.config/nvim/init.vim<CR>
noremap <LEADER>z :e ~/.zshrc<CR>
noremap <LEADER>r :e ~/.config/ranger/rc.conf<CR>

" ===
" === Cursor Movement
" ===

" (faster navigation)
noremap <silent> K 5k
noremap <silent> J 5j

" H key: go to the start of the line
noremap <silent> H ^
" L key: go to the end of the line
noremap <silent> L $


" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" search
set hlsearch
set incsearch
exec "nohlsearch"
noremap <LEADER><CR> :nohlsearch<CR>
noremap = nzz
noremap - Nzz

" save & quit
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>
set shiftwidth=2
set autoindent

" ===
" === Window management
" ===

" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l

" Disable the default `s` key
map s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H


" find and replace
noremap \s :%s//g<left><left>


" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('~/.config/nvim/plugged')

" status bar
Plug 'vim-airline/vim-airline'
Plug 'ojroques/vim-scrollstatus'

" decorate
Plug 'connorholyday/vim-snazzy'
Plug 'vim-airline/vim-airline-themes'

" fzf
Plug 'junegunn/fzf.vim'


call plug#end()

let g:airline_theme='violet'

" vim-scrollstatus config
let g:airline_section_x = '%{ScrollStatus()}'
let g:airline_section_y = airline#section#create_right(['filetype'])
let g:airline_section_z = airline#section#create([
           \ '%#__accent_bold#%3l%#__restore__#/%L', ' ',
           \ '%#__accent_bold#%3v%#__restore__#/%3{virtcol("$") - 1}',
           \ ])

let g:scrollstatus_size = 12
let g:scrollstatus_symbol_track = '░'
let g:scrollstatus_symbol_bar = '█'
