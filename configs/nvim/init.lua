require('plugins')
vim.opt.termguicolors = true
require("bufferline").setup{
	options = {
		color_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = 'slant' 
	}
}
vim.cmd[[
	nnoremap <silent>]b :BufferLineCycleNext<CR>
	nnoremap <silent>[b :BufferLineCyclePrev<CR>
	nnoremap <silent>]p :BufferLinePinTab<CR>
	
	autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

	nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
	inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
	
	nnoremap <silent>gf <cmd>NvimTreeToggle<cr>

]]

require('lualine').setup{
	options = {
    icons_enabled = true,
    theme = 'ayu_mirage',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require("toggleterm").setup{}
require("nvim-tree").setup{
      prefer_startup_root = true,
      sync_root_with_cwd = true,

      view = {
        centralize_selection = true,
	
      	float = {
            enable = false,
      	}
      },
      
}
