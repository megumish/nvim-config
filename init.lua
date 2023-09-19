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

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

local function load_plugins()
  assert(os.execute('rg --version') == 0, "rg command is required")
  local lua_files = io.popen('rg --files --type lua' .. ' ' .. vim.fn.stdpath("config") .. "/lua/plugins")
  local plugins = {}
  for filename in lua_files:lines() do
    table.insert(plugins, dofile(filename))
  end
  return plugins
end

local function setup()
  assert(os.execute('rg --version') == 0, "rg command is required")
  local lua_files = io.popen('rg --files --type lua' .. ' ' .. vim.fn.stdpath("config") .. "/lua/setups")
  local plugins = {}
  for filename in lua_files:lines() do
    dofile(filename)
  end
end

require('lazy').setup(load_plugins())
setup()
