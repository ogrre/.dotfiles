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

require("lazy").setup({
	-- Theme
	{ "bluz71/vim-moonfly-colors",        name = "moonfly",   lazy = false,                              priority = 1000 },
	-- LSP
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	{ 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' },
	-- Treesitter
	{ "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
	-- Telescope
	{ "nvim-telescope/telescope.nvim",    tag = '0.1.5',      dependencies = { 'nvim-lua/plenary.nvim' } },
	-- Noice (command in middle of screen)
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		}
	},
	-- Fern
	{
		"lambdalisue/fern.vim",
		config = function()
			local function open_fern()
				vim.cmd("Fern . -reveal=% -drawer -toggle")
			end
			vim.api.nvim_create_autocmd({ "VimEnter" }, {
				pattern = "*",
				nested = true,
				callback = open_fern,
			})

			-- Définissez vos mappings ici
			local fern_mappings = {
				n = {
					["p"] = { "<Plug>(fern-action-preview:toggle)", "Toggle preview" },
					["<C-p>"] = { "<Plug>(fern-action-preview:auto:toggle)", "Auto toggle preview" },
					["<C-d>"] = { "<Plug>(fern-action-preview:scroll:down:half)", "Scroll down in preview" },
					["<C-u>"] = { "<Plug>(fern-action-preview:scroll:up:half)", "Scroll up in preview" },
				},
			}

			-- Utilisez l'API Neovim Lua pour définir les mappings pour le buffer Fern
			local function set_mappings(bufnr)
				local function map(mode, lhs, rhs, desc)
					local opts = { noremap = true, silent = true }
					if desc then
						opts.desc = desc
					end
					vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
				end

				for mode, bindings in pairs(fern_mappings) do
					for lhs, rhs in pairs(bindings) do
						map(mode, lhs, rhs[1], rhs[2])
					end
				end
			end

			-- Créez un autogroupe et un autocommande pour définir les mappings lorsque Fern est chargé
			vim.api.nvim_create_augroup("fern-settings", { clear = true })
			vim.api.nvim_create_autocmd("FileType", {
				group = "fern-settings",
				pattern = "fern",
				callback = function()
					set_mappings(vim.api.nvim_get_current_buf())
				end,
			})
		end,
		dependencies = {
			"lambdalisue/fern-git-status.vim",
			"lambdalisue/fern-renderer-nerdfont.vim",
			"lambdalisue/fern-hijack.vim",
			"lambdalisue/fern-renderer-devicons.vim",
			"yuki-yano/fern-preview.vim",
		}
	},
})

--LSP
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
-- here you can setup the language servers
require('mason-lspconfig').setup({
	ensure_installed = {
		'lua_ls',
		'phpactor',
		'cssls',
		'lua_ls',
		'jsonls',
		'phpactor',
		'html',
		'tsserver',
		'rust_analyzer',
	},
	handlers = {
		lsp_zero.default_setup,

		--- replace `example_server` with the name of a language server
	},
})

-- Dans le fichier init.lua
local map = require('utils').map

-- Mappage de la commande :Fern -drawer -toggle en mode normal
map('n', '<leader>f', ':Fern . -reveal=% -drawer -toggle<CR>')


vim.cmd [[colorscheme moonfly]]
vim.opt.number = true
