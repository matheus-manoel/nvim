local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap comma as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Map file navigation
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Map no highlight
keymap("n", "<leader>n", ":noh<CR>", opts)

-- Resize with arrows
keymap("n", "<C-k>", ":resize -2<CR>", opts)
keymap("n", "<C-j>", ":resize +2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "fj", ":tabnext<CR>", opts)
keymap("n", "ff", ":tabprevious<CR>", opts)

-- Insert --
-- Press jj fast to enter
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Telescope (find files, live grep)
keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_ivy())<cr>", opts)
keymap("n", "<leader>g", "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy())<cr>", opts)

-- Autocommand that reloads neovim whenever you save the keymaps.lua file
vim.cmd [[
  augroup keymaps
    autocmd!
    autocmd BufWritePost keymaps.lua source <afile>
  augroup end
]]
