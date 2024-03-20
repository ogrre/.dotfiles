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
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"nvim-telescope/telescope.nvim", tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' }},
	{"bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
		{"lambdalisue/fern.vim", config = function()
		local function open_fern()
			vim.cmd("Fern . -reveal=" .. vim.fn.expand("%") .. " -drawer -toggle")
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
	end, dependencies = {
		"lambdalisue/fern-git-status.vim",
		"lambdalisue/fern-renderer-nerdfont.vim",
		"lambdalisue/fern-hijack.vim",
		"lambdalisue/fern-renderer-devicons.vim",
		"lambdalisue/fern-preview.vim",
	} },
})

-- Dans le fichier init.lua
local map = require('utils').map

-- Mappage de la commande :Fern -drawer -toggle en mode normal
map('n', '<leader>f', ':Fern . -drawer -toggle<CR>')


vim.cmd [[colorscheme moonfly]]
vim.opt.number = true

