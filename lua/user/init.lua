return {
  -- colorscheme = "astrodark",
  colorscheme = "gruvbox",
  lsp = {
    formatting = {
      format_on_save = false, -- enable or disable automatic formatting on save
    },

    -- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/pack/rust/README.md
    config = {
      -- These settings not working, will stop jdtls being triggered!
      -- jdtls = {
      --   color = {
      --     enabled = false,
      --   },
      -- },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
           cargo = {
              extraEnv = { CARGO_PROFILE_RUST_ANALYZER_INHERITS = 'dev', },
              extraArgs = { "--profile", "rust-analyzer", },
            },
          },
        },
      },
    },
  },

  -- https://docs.astronvim.com/recipes/status/
  -- Update the color of insert mode tag
  heirline = {
    colors = {
      -- To match up with gruvbox
      -- https://github.com/ellisonleao/gruvbox.nvim/blob/4176b0b720db0c90ab4030e5c1b4893faf41fd51/lua/gruvbox.lua#L90
      insert = "#fe8019",
      normal = "#83a598",
      visual = "#d3869b",
    },
  },

  -- https://docs.astronvim.com/recipes/mappings/
  mappings = {
    n = {
     ["<leader><space>"] = {
        function() require("telescope.builtin").find_files() end,
        desc = "Find files"
      }
    },
  },
}
