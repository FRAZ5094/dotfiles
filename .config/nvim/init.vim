set nocompatible
filetype plugin on

let g:coc_global_extensions=[
      \'coc-snippets',
      \'coc-eslint',
      \'coc-vimlsp',
      \'coc-tsserver',
      \'coc-json',
      \'coc-clangd',
      \'coc-tailwind-intellisense'
      \]

call plug#begin('~/.config/nvim/plugged')

Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release','do': { -> coc#util#install() }}
Plug 'matze/vim-move'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'mattn/emmet-vim'
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install', 'for': ['javascript', 'css']}
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
Plug 'unblevable/quick-scope'

call plug#end()

source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/NERDTree.vim
source $HOME/.config/nvim/plug-config/NERDCommenter.vim
source $HOME/.config/nvim/plug-config/ctrlp.vim
source $HOME/.config/nvim/plug-config/startify.vim

inoremap jk <Esc>
noremap <A-p> "+p
vnoremap <A-p> "+p
vnoremap <A-y> "+y
"map <BS> <Nop>
"imap <BS> <Nop>
map <Left> <Nop>
imap <Left> <Nop>
map <Right> <Nop>
imap <Right> <Nop>
map<Up> <Nop>
imap <Up> <Nop>
map <Down> <Nop>
imap <Down> <Nop>
"splits
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nnoremap <c-z> <nop>

nnoremap gf <C-W>gf

map <PageDown> <Nop>
imap <PageDown> <Nop>
map <ins> <Nop>
imap <ins> <Nop>
map <end> <Nop>
imap <end> <Nop>
map <del> <Nop>
imap <del> <Nop>

set number! relativenumber!
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set autochdir
set spell spelllang=en_us
set cursorline

" CTRL+S Save
" imap <C-s> <ESC>:w<CR>a
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >

  if (has("termguicolors"))
    set termguicolors
  endif
endif
