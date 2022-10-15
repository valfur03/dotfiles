call plug#begin()

	" High Contrast & Vivid Color Scheme based on Monokai Pro 
	Plug	'sainnhe/sonokai'

	" Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers.
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Nvim Treesitter configurations and abstraction layer
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" snippets
	Plug 'SirVer/ultisnips'
	Plug 'mlaursen/vim-react-snippets'

	" Vim plugin, insert or delete brackets, parens, quotes in pair
	Plug 'jiangmiao/auto-pairs'


call plug#end()

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/tree-sitter.vim

set		nu
set		list
set		listchars=tab:‣\ ,space:·
syntax	enable
let		g:sonokai_transparent_background = 1
silent!	colorscheme	sonokai
set		colorcolumn=81
set		mouse=
set		showcmd
set		autoindent
set		smarttab
set		tabstop=4
set		shiftround
set		shiftwidth=4
set		t_ut=
set		wildmode=longest,list,full
set		wildmenu
set		wildignore+=*.o,*.d

map		,d	$a /* ===== DELETE ===== */<ESC>
map		,D	o<ENTER>/* ===== DELETE ===== */<ENTER><ESC>
map		,t	call TlistOpen
