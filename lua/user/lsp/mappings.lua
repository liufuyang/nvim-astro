return {
  -- No need to setup these now as the better way is to do via dap config setting directly, see lua/user/plugins/java.lua
  -- n = {
  --   ["<leader>J"] = { name = "JDTLS" },
  --   ["<leader>Ja"] = { name = "Attach to remote debugger" },
  --   ["<leader>Jaa"] = { "<Cmd>lua AttachDebugger('localhost', 4100)<CR>", desc = "Attach Debugger - localhost 4100"},
  --   ["<leader>Jab"] = { "<Cmd>lua AttachDebugger('localhost', 4200)<CR>", desc = "Attach Debugger - localhost 4200"},
  -- }
}

--   if you want to invoke lua, usually it's done natively by passing lua function like this
--
--   n = {
--     ["<leader>J"] = {
--       function()
--         require("your_required_module").your_required_function()
--       end,
--       desc = "your description",
--     },
--   },
