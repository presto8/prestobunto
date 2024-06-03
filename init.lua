local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
  "folke/which-key.nvim",
  "folke/neodev.nvim",
  "tpope/vim-sensible",
  "tpope/vim-fugitive",
  "farmergreg/vim-lastplace",
  { "airblade/vim-gitgutter",
      config = function()
        vim.opt.diffopt:append("vertical")
      end,
  },
  "mbbill/undotree",
  { "junegunn/fzf",
      keys = {
        {"<C-p>", "<cmd>FZF<cr>", desc = "Browse files with FZF" },
      },
  },
  { "yegappan/mru",
      dependencies = "junegunn/fzf",
      keys = {
        {"JJ", "<cmd>FZFMru<cr>", desc = "Most recent files pop-up" },
      },
  },
})
