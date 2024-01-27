-- https://github.com/ellisonleao/gruvbox.nvim/issues/105%20DiagnosticVirtualTextWarn
-- Patch up Grubbox highlight issues
function FixGruvbox()
  -- vim.api.nvim_set_hl(0, 'DiffviewDiffAddAsDelete', { bg = "#431313" })
  -- vim.api.nvim_set_hl(0, 'DiffDelete', { bg = "none", fg = colors.dark2 })
  -- vim.api.nvim_set_hl(0, 'DiffviewDiffDelete', { bg = "none", fg = colors.dark2 })
  -- vim.api.nvim_set_hl(0, 'DiffAdd', { bg = "#142a03" })
  -- vim.api.nvim_set_hl(0, 'DiffChange', { bg = "#3B3307" })
  -- vim.api.nvim_set_hl(0, 'DiffText', { bg = "#4D520D" })

  vim.api.nvim_set_hl(0, 'DiagnosticWarn', { bg = "#504945", fg = "#bdae93" })
  vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { bg = "#504945", fg = "#bdae93" })
end
FixGruvbox()

vim.api.nvim_create_autocmd(
  "ColorScheme",
    { pattern = { "gruvbox" }, callback = FixGruvbox }
)

return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.gruvbox-nvim" }
}

-- No need to do this as astronvim already setup short keys to do so, but saving as a learning material
--
-- https://www.reddit.com/r/neovim/comments/ng0dj0/lsp_diagnostics_query_is_there_an_way_to_toggle/
-- allow us to hide or show diagnostic
-- vim.g.diagnostics_active = true
-- this function can be caled as:
-- ':call v:lua.toggle_diagnostics()<CR>'
-- function _G.toggle_diagnostics()
--   if vim.g.diagnostics_active then
--     vim.g.diagnostics_active = false
--     vim.diagnostic.hide()
--     -- vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
--   else
--     vim.g.diagnostics_active = true
--     vim.diagnostic.show()
--     -- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--     --   vim.lsp.diagnostic.on_publish_diagnostics, {
--     --     virtual_text = true,
--     --     signs = true,
--     --     underline = true,
--     --     update_in_insert = false,
--     --   }
--     -- )
--   end
-- end
--

