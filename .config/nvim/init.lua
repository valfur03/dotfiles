vim.g.mapleader = ";"

vim.opt.nu = true
vim.opt.scl = "yes"
vim.opt.list = true
vim.opt.listchars = { tab = "‣ ", space = "·" }
vim.opt.colorcolumn = "81"
vim.opt.mouse = ""
vim.opt.wildmode = { "longest", "list", "full" }
vim.opt.wildignore:append({ "*.o", "*.d" })
-- Tabs
---- when developping JS, set to 2 and uncomment below
-- vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

vim.g.sonokai_transparent_background = true

vim.cmd.colorscheme("sonokai")

require'nvim-treesitter'.install {
	'awk',
	'bash',
	'c',
	'cpp',
	'css',
	'csv',
	'desktop',
	'diff',
	'dockerfile',
	'editorconfig',
	'git_config',
	'git_rebase',
	'gitattributes',
	'gitcommit',
	'gitignore',
	'go',
	'gomod',
	'gosum',
	'gpg',
	'helm',
	'html',
	'http',
	'ini',
	'javascript',
	'jinja',
	'jsdoc',
	'json',
	'json5',
	'lua',
	'make',
	'markdown',
	'mermaid',
	'ocaml',
	'printf',
	'python',
	'regex',
	'sccs',
	'ssh_config',
	'tmux',
	'typescript',
	'vim',
	'xml',
	'yaml',
}
vim.api.nvim_create_autocmd('FileType', {
	callback = function() vim.treesitter.start() end,
})
