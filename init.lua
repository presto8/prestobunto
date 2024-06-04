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
  { "tpope/vim-fugitive",
      config = function()
        -- Always use vertical split for Vim Fugitive :Gdiff
        vim.opt.diffopt:append("vertical")
      end,
  },
  "tpope/vim-commentary",
  "tpope/vim-unimpaired",
  "ervandew/supertab",
  "w0rp/ale",
  "vim-airline/vim-airline",
  "farmergreg/vim-lastplace",
  "jremmen/vim-ripgrep",
  "airblade/vim-gitgutter",
  "mbbill/undotree",
  "jremmen/vim-ripgrep",
  "embear/vim-foldsearch",
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

-- Make colors stand out better due to dark background
vim.opt.background = "dark";

-- Highlight current line
vim.opt.cursorline = true;

-- Line numbers on
vim.opt.number = true;

-- Tell vim to remember certain things when we exit
--  '10 : marks will be remembered for up to 10 previously edited files
--  \"100 : will save up to 100 lines for each register
--  :20 : up to 20 lines of command-line history will be remembered
--  % : saves and restores the buffer list
--  n... : where to save the viminfo files
vim.opt.viminfo = "'50,:100,/100,@100,h,%,n~/.config/nvim/viminfo";

-- Search
vim.opt.ignorecase = true;
vim.opt.smartcase = true;
vim.opt.hlsearch = true;

-- allow ; in addition to :
vim.keymap.set('n', ';', ':', { remap = true })

-- alloq qa1 in command mode
vim.cmd("ca qa1 qa!")

-- completion
-- enable C-n and C-p to scroll through matches
vim.opt.wildmenu = true;
-- make completition like Bash
vim.opt.wildmode = "list:longest";
-- ignore when tab-completing
vim.opt.wildignore = "*.o,*~";

-- filetype
vim.cmd("filetype indent plugin on")

-- Tab settings
vim.opt.tabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.softtabstop = 4;
vim.opt.expandtab = true;

-- Line wrapping options
-- Tip: use gj, gk, g0, g$ to move within wrapped lines

vim.opt.showbreak = "=>";
-- word wrap visually on screen only (don't change text)
vim.opt.wrap = true;
-- only wrap at certain characters
vim.opt. linebreak = true;

-- Tags
vim.opt.tags = "./tags,tags,../tags,../../tags";
