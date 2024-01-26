return {
  -- colorscheme = "astrodark",
  colorscheme = "gruvbox",
  lsp = {
    formatting = {
      format_on_save = false, -- enable or disable automatic formatting on save
    },

    -- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/pack/rust/README.md
    config = {
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
}
