local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- hoxca speed motion
vim.keymap.set("n", "<A-Up>", "8k", { desc = "speed motion up" })
vim.keymap.set("n", "<A-Down>", "8j", { desc = "speed motion down" })
vim.keymap.set("i", "<A-Up>", "<ESC>8ki", { desc = "speed motion up" })
vim.keymap.set("i", "<A-Down>", "<ESC>8ji", { desc = "speed motion down" })
vim.keymap.set("n", "<A-Left>", "0", { desc = "speed motion line beginning" })
vim.keymap.set("n", "<A-Right>", "$", { desc = "speed motion end of line" })

-- visual bloc move config
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

vim.keymap.set("v", "<", "<gv", { desc = "move bloc < indentation" })
vim.keymap.set("v", ">", ">gv", { desc = "move bloc > indentation" })

-- the how it be paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- remember yanked
vim.keymap.set("v", "p", '"_dp', opts)

-- Copies or Yank to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]], opts)

-- leader d delete wont remember as yanked/clipboard when delete pasting
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- format without prettier using the built in
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Unmaps Q in normal mode
vim.keymap.set("n", "Q", "<nop>")

-- prevent x delete from registering when next paste
vim.keymap.set("n", "x", '"_x', opts)

-- Replace the word cursor is on globally
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word cursor is on globally" })

-- Hightlight yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
      vim.hl.on_yank()
  end,
})

-- buffer cycle management
vim.keymap.set("n", "<C-A-Right>", ":bn<CR>", { desc = "Next buffer" }) 
vim.keymap.set("n", "<C-A-Left>", ":bp<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-A-Down>", ":bd<CR>", { desc = "Delete buffer" })

-- tab stuff
-- vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
-- vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" })
-- vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc ="go to next" })
-- vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to pre" })
-- vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current tab in new tab" })

--split management

-- split window vertically
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
-- split window horizontally
vim.keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
-- make split windows equal width & height
vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
-- close current split window
vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })

