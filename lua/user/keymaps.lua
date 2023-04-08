--                             ,XK
--                             ldo
--                            cdd,
--                     .NXK0Okdd.
--                   ,Odd;
--                   xd;
--                  .dd.
--.KkxddddddddddddddddddddddddddddddddxkK.
--dddddddddddddddddddddddddddddddddddddddx
--odddc  .d.  cl   d;  ;d.  lc  .d'  :dddd
--odddxKKkdOKKdoKK0ddKKxdOKKodKKOdxKKxdddd
--oddddd.  cl  .d,  ;d   o:  'd.  cddddddd
--oddddd0NNddNNKdkNNOdNNXokNNOdkNNdddddddd
--odddc  .d.                    .d'  :dddd
--odddc  'd.                    .d,  :dddd
--;ddddxxdddxxxxxxxxxxxxxxxxxxxxdddxxdddd;
--  cddddddddddddddddddddddddddddddddddl
--
local opts = { noremap = true, silent = false }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set('', 'F', function()
   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
-- vim.keymap.set('', 't', function()
--   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
-- end, {remap=true})
-- vim.keymap.set('', 'T', function()
--   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- end, {remap=true})
--
--switch mouse to enabled or not
--crtl m to enable alt m to disable
function ToggleMouse()
    if vim.opt.mouse == "a" then
        vim.opt.mouse = ""
        print("mouse = nothing!")
    elseif vim.opt.mouse == "" then
        vim.opt.mouse = "a"
        print("mouse = a!")
    end
    print(vim.opt.mouse)
end

vim.keymap.set("n", "<A-m>", function() ToggleMouse() end, opts)

--leader o to enter in a space above/below
keymap("n", "<leader>o", "o<Esc>", opts)
keymap("n", "<leader>O", "O<Esc>", opts)


--exit search mode
keymap("n", "<Esc><Esc>", ":noh <CR>", opts)

--save keymap both modes I and N
keymap("n", "<C-s>", ":w <CR>", opts)
keymap("i", "<C-s>", ":w <CR>", opts)

--toggle terminal

keymap("n", "<leader>t", ":ToggleTerm <CR>", opts)

--close buffer
keymap("n", "<C-w>", ":bw <CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--toggle files
keymap("n", "<leader>e", ":NvimTreeToggle <cr>", opts)
--quit a window
keymap("n", "<S-q>", "<C-w>q", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +4<CR>", opts)
keymap("n", "<C-Down>", ":resize -4<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -4<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +4<CR>", opts)

-- Navigate buffers
keymap("n", "<S-k>", ":bnext<CR>", opts)
keymap("n", "<S-j>", ":bprevious<CR>", opts)



-- Insert Mode --
keymap("i", "<C-h>", "<C-w>", opts)
keymap("i", "<C-BS>", "<C-w>", opts)




-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)

keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
