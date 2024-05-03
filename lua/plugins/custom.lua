vim.opt.relativenumber = false
vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
vim.keymap.set("n", "<leader>r", ":SearchReplaceSingleBufferOpen<CR>", { silent = true })

return {
  {
    "chrisgrieser/nvim-spider",
  },
  {
    "roobert/search-replace.nvim",
    config = function()
      require("search-replace").setup {
        -- optionally override defaults
        default_replace_single_buffer_options = "gcI",
        default_replace_multi_buffer_options = "egcI",
      }
    end,
  },
}
