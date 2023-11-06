-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- Disable Normal mappings
    ["<C-s>"] = false,
    ["<C-q>"] = false,
    ["Q"] = false,
    -- Disable Buffer navigation mappings
    ["<S-l>"] = false,
    ["<S-h>"] = false,
    -- Disable Split navigation mappings
    ["<C-h>"] = false,
    ["<C-j>"] = false,
    ["<C-k>"] = false,
    ["<C-l>"] = false,
    -- Add alt key for mac to not collide with mission control
    ["<C-A-Up>"] = { "<cmd>resize -2<CR>", desc = "Resize split up" },
    ["<C-A-Down>"] = { "<cmd>resize +2<CR>", desc = "Resize split down" },
    ["<C-A-Left>"] = { "<cmd>vertical resize -2<CR>", desc = "Resize split left" },
    ["<C-A-Right>"] = { "<cmd>vertical resize +2<CR>", desc = "Resize split right" },
    -- vim-easy-align mappings
    ["ga"] = {  ":EasyAlign ", desc = "EasyAlign"},
    -- neo-test mappings
    ["<leader>r"] = { name = "Run Test" },
    -- run nearest
    ["<leader>rn"] = { "<cmd>lua require('neotest').run.run()<CR>", desc = "Run Nearest (Default)" },
    -- run file
    ["<leader>rf"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run File" },
    ["<leader>rr"] = { "<cmd>lua require('neotest').run.run_last()<CR>", desc = "Run Last" },
    ["<leader>ro"] = { "<cmd>lua require('neotest').output.open({ enter = true })<CR>", desc = "Output" },
    ["<leader>rS"] = { "<cmd>lua require('neotest').run.stop()<CR>", desc = "Stop" },
    ["<leader>rs"] = { "<cmd>lua require('neotest').summary.toggle()<CR>", desc = "Toggle Summary" },
    ["<leader>rp"] = { "<cmd>lua require('neotest').output_panel.toggle()<CR>", desc = "Toggle Output Panel" },
  },
  v = {
    -- vim-easy-align mappings
    ["ga"] = {  ":EasyAlign ", desc = "EasyAlign"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
