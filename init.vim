let mapleader = "\<Space>"
call plug#begin()

nnoremap <leader>pv :Ex<CR>

"Navigation Remap
"Insert
noremap h h
noremap n j
noremap e k
noremap i l

noremap h h
noremap j n
noremap k e
noremap l i

"Visual
vnoremap h h
vnoremap n j
vnoremap e k
vnoremap i l


vnoremap h h
vnoremap j n
vnoremap k e
vnoremap l i

"Move Selected Text
vnoremap N :m '>+1<CR>gv=gv
vnoremap E :m '<-2<CR>gv=gv

"Window
nnoremap , <C-w>
nnoremap ,, <C-w><C-w>
noremap ,h <C-w>h
noremap ,n <C-w>j
noremap ,e <C-w>k
noremap ,i <C-w>l

"Buffer Switch
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

"Plugins
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'mbbill/undotree'
Plug 'prabirshrestha/vim-lsp' " async lsp support
Plug 'mattn/vim-lsp-settings' " lsp auto-configs
Plug 'prabirshrestha/asyncomplete.vim' " async completion
Plug 'prabirshrestha/asyncomplete-lsp.vim' " lsp source
Plug 'dense-analysis/ale' " Asynchronous Lint Engine (uses vim-lsp)
Plug 'sheerun/vim-polyglot' " syntax highlighting for all
Plug 'nvim-tree/nvim-tree.lua'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'dstein64/vim-startuptime'
"Copy text to Clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

"UndoTree
nnoremap <leader>u :UndotreeToggle<CR>

"Them

"NvimTree
noremap <leader>e :NvimTreeToggle<CR>

"set
set number
set relativenumber
call plug#end()

"Nvim-Tree
lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
require("nvim-tree").setup()
require('mason').setup()
require("mason-lspconfig").setup()
EOF


colorscheme catppuccin-mocha
