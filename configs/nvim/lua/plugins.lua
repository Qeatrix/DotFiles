vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
-- You add plugins here  
  use({
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
          local saga = require("lspsaga")
  
          saga.init_lsp_saga({
              -- your configuration
          })
      end,
  })

  use{
  	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use({
    'NTBBloodbath/doom-one.nvim',
    setup = function()
        -- Add color to cursor
		vim.g.doom_one_cursor_coloring = false
		-- Set :terminal colors
		vim.g.doom_one_terminal_colors = true
		-- Enable italic comments
		vim.g.doom_one_italic_comments = false
		-- Enable TS support
		vim.g.doom_one_enable_treesitter = true
		-- Color whole diagnostic text or only underline
        vim.g.doom_one_diagnostics_text_color = false
		-- Enable transparent background
		vim.g.doom_one_transparent_background = false

        -- Pumblend transparency
		vim.g.doom_one_pumblend_enable = false
		vim.g.doom_one_pumblend_transparency = 20

        -- Plugins integration
		vim.g.doom_one_plugin_neorg = true
		vim.g.doom_one_plugin_barbar = false
		vim.g.doom_one_plugin_telescope = false
		vim.g.doom_one_plugin_neogit = true
		vim.g.doom_one_plugin_nvim_tree = true
		vim.g.doom_one_plugin_dashboard = true
		vim.g.doom_one_plugin_startify = true
		vim.g.doom_one_plugin_whichkey = true
		vim.g.doom_one_plugin_indent_blankline = true
		vim.g.doom_one_plugin_vim_illuminate = true
		vim.g.doom_one_plugin_lspsaga = false
	end,
	config = function()
        vim.cmd("colorscheme doom-one")
    end,
  })

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  	require("toggleterm").setup()
  end} 

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}

  use {
  	'nvim-tree/nvim-tree.lua',
  	requires = {
  	  'nvim-tree/nvim-web-devicons', -- optional, for file icons
  	},
  	tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

end)
