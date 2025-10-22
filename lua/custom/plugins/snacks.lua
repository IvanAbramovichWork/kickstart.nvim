return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = false },
    dashboard = { enabled = false },
    indent = { enabled = false },
    input = { enabled = false },
    picker = {},
    notifier = { enabled = true },
    quickfile = { enabled = false },
    scroll = { enabled = true },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    lazygit = {},
  },
  keys = {
    { "<leader>gg",       function() Snacks.lazygit() end,                                                desc = "Lazygit" },
    { "<leader>sf",       function() Snacks.picker.files({ ignored = true, exclude = { '*.beam' } }) end, desc = "Files" },
    { "<leader><leader>", function() Snacks.picker.buffers() end,                                         desc = "Buffers" },
    { "<leader>s.",       function() Snacks.picker.recent() end,                                          desc = "Recent" },
    { "<leader>so",       function() Snacks.picker.grep_buffers() end,                                    desc = "Grep Open Buffers" },
    { "<leader>sg",       function() Snacks.picker.grep({ ignored = true }) end,                          desc = "Grep" },
    { "<leader>sw",       function() Snacks.picker.grep_word({ ignored = true }) end,                     desc = "Visual selection or word", mode = { "n", "x" } },
    { "<leader>sr",       function() Snacks.picker.resume() end,                                          desc = "Resume" },
    { "<leader>sm",       function() Snacks.picker.marks() end,                                           desc = "Marks" },
    { "<leader>sd",       function() Snacks.picker.diagnostics() end,                                     desc = "Diagnostics" },
    { "<leader>sc",       function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end,         desc = "Find Config File" },
    { "<leader>sC",       function() Snacks.picker.command_history() end,                                 desc = "Command History" },
    { "<leader>ds",       function() Snacks.picker.lsp_symbols() end,                                     desc = "Lsp Symbols" },
    { "<leader>/",        function() Snacks.picker.lines() end,                                           desc = "Buffer Lines" },
    { "<leader>sh",        function() Snacks.picker.search_history() end,                                           desc = "Search History for Snacks" },
    { "<leader>sj",        function() Snacks.picker.jumps() end,                                           desc = "Search Jums History" },
  }
}
