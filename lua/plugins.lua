local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- color theme
  use 'bluz71/vim-nightfly-guicolors'

  -- tmux and split window navigation
  use 'christoomey/vim-tmux-navigator'

  -- maximizes and restores current window
  use 'szw/vim-maximizer'

  -- brackets handling
  use 'tpope/vim-surround'

  -- usefull replacements
  use 'vim-scripts/ReplaceWithRegister'

  -- commenting with gcc
  use 'numToStr/Comment.nvim'


  use 'nvim-lua/plenary.nvim'

  -- file explorer
  use 'nvim-tree/nvim-tree.lua'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- satus line
  use 'nvim-lualine/lualine.nvim'

  -- advanced search
  use ({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  use ({ 'nvim-telescope/telescope.nvim', branch = '0.1.x' })
  -- My plugins here
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  --
  if packer_bootstrap then
    require('packer').sync()
  end
end)


