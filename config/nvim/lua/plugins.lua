local cmd = vim.cmd
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

cmd [[packadd packer.nvim]]

return require('packer').startup({ function()
  use {'wbthomason/packer.nvim', opt = true}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/playground'}
  use {'junegunn/fzf'}
  use {'junegunn/fzf.vim'}
  use {'bfredl/nvim-luadev'}
  use {'/Users/jamesbombeelu/Code/snazzy.nvim'}
  use {
    'glepnir/lspsaga.nvim',
    requires = {'neovim/nvim-lspconfig'}
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use { 'f-person/git-blame.nvim' }
  use { 'mhartington/formatter.nvim' }
  -- use { 'prettier/vim-prettier' }
  use { 'vim-test/vim-test' }

  use { 'Yggdroot/indentLine' }
  use { 'b3nj5m1n/kommentary' }
  use { 'chaoren/vim-wordmotion' }
  use { 'connorholyday/vim-snazzy' }
  use { 'hrsh7th/nvim-compe' }
  use { 'tpope/vim-abolish' }
  use { 'tpope/vim-commentary' }
  use { 'tpope/vim-eunuch' }
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-projectionist' }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-vinegar' }
  use { 'voldikss/vim-floaterm' }
end,
  config = {
    compile_path = fn.stdpath('data')..'packer/packer_compiled.vim',
  }
})
