return {
  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  {
    "wintermute-cell/gitignore.nvim",
    lazy = true,
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
  },

  {
    "junegunn/gv.vim",
    lazy = false,
  },

  {
    'sindrets/diffview.nvim',
    config = function()
      require("free.config.diffview")
    end
  },

  {
    "NeogitOrg/neogit",
    cmd = "Neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      'sindrets/diffview.nvim',
    },
    config = function()
      require("free.config.neogit")
    end
  },
  {
    "pwntester/octo.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      suppress_missing_scope = {
        projects_v2 = true,
      },
    },
    config = function(_, opts)
      require("octo").setup(opts)
    end,
  },
}
