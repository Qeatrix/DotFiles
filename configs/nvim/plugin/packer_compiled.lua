-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/quartix/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/quartix/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/quartix/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/quartix/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/quartix/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/quartix/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["doom-one.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme doom-one\bcmd\bvim\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/quartix/.local/share/nvim/site/pack/packer/opt/doom-one.nvim",
    url = "https://github.com/NTBBloodbath/doom-one.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nA\0\0\4\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/quartix/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/quartix/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/quartix/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/quartix/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/quartix/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/quartix/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: doom-one.nvim
time([[Setup for doom-one.nvim]], true)
try_loadstring("\27LJ\2\n»\6\0\0\2\0\21\0M6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0+\1\1\0=\1\b\0006\0\0\0009\0\1\0)\1\20\0=\1\t\0006\0\0\0009\0\1\0+\1\2\0=\1\n\0006\0\0\0009\0\1\0+\1\1\0=\1\v\0006\0\0\0009\0\1\0+\1\1\0=\1\f\0006\0\0\0009\0\1\0+\1\2\0=\1\r\0006\0\0\0009\0\1\0+\1\2\0=\1\14\0006\0\0\0009\0\1\0+\1\2\0=\1\15\0006\0\0\0009\0\1\0+\1\2\0=\1\16\0006\0\0\0009\0\1\0+\1\2\0=\1\17\0006\0\0\0009\0\1\0+\1\2\0=\1\18\0006\0\0\0009\0\1\0+\1\2\0=\1\19\0006\0\0\0009\0\1\0+\1\1\0=\1\20\0K\0\1\0\28doom_one_plugin_lspsaga#doom_one_plugin_vim_illuminate%doom_one_plugin_indent_blankline\29doom_one_plugin_whichkey\29doom_one_plugin_startify\30doom_one_plugin_dashboard\30doom_one_plugin_nvim_tree\27doom_one_plugin_neogit\30doom_one_plugin_telescope\27doom_one_plugin_barbar\26doom_one_plugin_neorg#doom_one_pumblend_transparency\29doom_one_pumblend_enable$doom_one_transparent_background$doom_one_diagnostics_text_color\31doom_one_enable_treesitter\29doom_one_italic_comments\29doom_one_terminal_colors\29doom_one_cursor_coloring\6g\bvim\0", "setup", "doom-one.nvim")
time([[Setup for doom-one.nvim]], false)
time([[packadd for doom-one.nvim]], true)
vim.cmd [[packadd doom-one.nvim]]
time([[packadd for doom-one.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: doom-one.nvim
time([[Config for doom-one.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme doom-one\bcmd\bvim\0", "config", "doom-one.nvim")
time([[Config for doom-one.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\4\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\1K\0\1\0\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
