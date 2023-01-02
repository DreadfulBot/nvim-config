vim.g.mapleader = " "
local keymap = vim.keymap

-- keymap.set("i", "jk", "<ESC>")

-- russian keymaps keymaps
-- mode changing
keymap.set("i", "оо", "<ESC>")
keymap.set("n", "ш", "i")

-- navigation
keymap.set("n", "о", "j")
keymap.set("n", "д", "l")
keymap.set("n", "р", "h")
keymap.set("n", "л", "k")

-- line handilng
keymap.set("n", "щ", "o")
keymap.set("n", "Щ", "O")
keymap.set("n", "ф", "a")
keymap.set("n", "Ф", "A")

-- deletion
keymap.set("n", "ч", "x")
keymap.set("n", "Ч", "X")
keymap.set("n", "в", "d")
keymap.set("n", "В", "D")

-- copy
keymap.set("n", "н", "y")
keymap.set("n", "Н", "Y")

-- words
keymap.set("n", "ц", "w")

keymap.set("i", "jj", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x')
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split, left eq right
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- yw - copy word, grw - replace current word with copied previously
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- tagbar
keymap.set("n", "<leader>tb", ":Tagbar<CR>") -- toggle tagbar

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- diffview
keymap.set("n", "<leader>dfo", "<cmd>DiffviewOpen<CR>")
keymap.set("n", "<leader>dfc", "<cmd>DiffviewClose<CR>")
