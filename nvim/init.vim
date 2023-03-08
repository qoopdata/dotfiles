" vim-forked main configuration
set mouse=a
set noswapfile
set fileformat=unix
set autoindent
set encoding=utf-8
set number
set scrolloff=7
set tabstop=4
set softtabstop=4
set expandtab
filetype indent on


call plug#begin()
" nerdtree plug
Plug 'preservim/nerdtree'

" coc (needs nodejs and npm) plug
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" theme plug
Plug 'ayu-theme/ayu-vim'

" transparent background plug
Plug 'xiyaowong/nvim-transparent'
call plug#end()


" theme settings
set termguicolors
let ayucolor="dark"
colorscheme ayu

" transparentness enable
let g:transparent_enabled = v:true

" nerdtree keymaps: autostart and switch back; f1 to toggle; if last -> close
autocmd VimEnter * NERDTree | wincmd p
map <F1> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" coc keymaps
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
