call plug#begin()

	" All the lua functions I don't want to write twice.
	" NEEDED for 'sindrets/diffview.nvim'
	" NEEDED for 'nvim-telescope/telescope.nvim'
	Plug 'nvim-lua/plenary.nvim'

	" High Contrast & Vivid Color Scheme based on Monokai Pro 
	Plug	'sainnhe/sonokai'

	" Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers.
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Nvim Treesitter configurations and abstraction layer
	Plug 'nvim-treesitter/nvim-treesitter', {'branch': 'v0.8.0', 'do': ':TSUpdate'}

	" snippets
	Plug 'SirVer/ultisnips'
	Plug 'mlaursen/vim-react-snippets'

	" Vim plugin, insert or delete brackets, parens, quotes in pair
	Plug 'jiangmiao/auto-pairs'

	" Lua `fork` of vim-web-devicons for neovim
	" NEEDED for 'sindrets/diffview.nvim'
	" RECOMMENDED for 'nvim-telescope/telescope.nvim'
	Plug 'nvim-tree/nvim-web-devicons'

	" Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
	Plug 'sindrets/diffview.nvim'

	" Find, Filter, Preview, Pick. All lua, all the time.
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

    " continuously updated session files
    Plug 'tpope/vim-obsession'


call plug#end()

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/tree-sitter.vim
source $HOME/.config/nvim/plug-config/telescope.vim

set		nu
set		list
set		listchars=tab:‣\ ,space:·
syntax	enable
let		g:sonokai_transparent_background = 1
silent!	colorscheme	sonokai
set		colorcolumn=81
set		mouse=
set		showcmd
set		t_ut=
set		wildmode=longest,list,full
set		wildmenu
set		wildignore+=*.o,*.d

" Tabs
set		autoindent
set		expandtab
set		tabstop=4
set		shiftround
set		shiftwidth=2
set		smarttab

map		,d	$a /* ===== DELETE ===== */<ESC>
map		,D	o<ENTER>/* ===== DELETE ===== */<ENTER><ESC>
map		,t	call TlistOpen
