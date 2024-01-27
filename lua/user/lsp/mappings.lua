return {
  n = {
    ["<leader>J"] = { name = "JDTLS" },
    ["<leader>Ja"] = { name = "Attach to remote debugger" },
    ["<leader>Jaa"] = { "<Cmd>lua AttachDebugger('localhost', 4100)<CR>", desc = "Attach Debugger - localhost 4100"},
    ["<leader>Jab"] = { "<Cmd>lua AttachDebugger('localhost', 4200)<CR>", desc = "Attach Debugger - localhost 4200"},
  }
}
