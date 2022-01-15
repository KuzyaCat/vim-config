"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.

" Python Setting {
  set pythondll=/usr/local/Frameworks/Python.framework/Versions/3.9/Python
  set pythonjome=/usr/local/Frameworks/Python.framework/Versions/3.9
  set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/3.9/Python
  set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.9
" }
"
set nocompatible

packadd! dracula
syntax enable
colorscheme dracula

call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'

Plug 'Lokaltog/vim-easymotion'

Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'Quramy/tsuquyomi'

Plug 'vim-airline/vim-airline'

Plug 'w0rp/ale'

Plug 'mattn/emmet-vim'
Plug 'Valloric/MatchTagAlways'
Plug 'mileszs/ack.vim'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'othree/html5.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'yggdroot/indentline'

Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'


Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
"Plug 'altercation/vim-colors-solarized'
"Plug 'tomasiser/vim-code-dark'

Plug 'rust-lang/rust.vim'
Plug 'bfrg/vim-cpp-modern'

Plugin 'pangloss/vim-javascript'
Plug 'yuezk/vim-js'
Plugin 'mxw/vim-jsx'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

Plugin 'ryanoasis/vim-devicons'


call plug#end()

let s:running_windows = has("win16") || has("win32") || has("win64")
let s:colorful_term = (&term =~ "xterm") || (&term =~ "screen")
let s:gui_running = has('gui_running')
let g:indentLine_setConceal = 0

an TouchBar.EnterFullScreen          <Nop>

source ~/.vim/.vimrc.settings
source ~/.vim/.vimrc.mappings
source ~/.vim/.vimrc.autocmd
source ~/.vim/.vimrc.func
source ~/.vim/.vimrc.plugin


" source vimrc.local is exists
if filereadable(glob(".vimrc.local"))
  source .vimrc.local
endif
