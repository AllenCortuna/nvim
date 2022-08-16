local nmap = vim.api.nvim_set_keymap
local log = { noremap = true, silent = false, nowait = false }
local nolog = { noremap = true, silent = true, nowait = false }
local remap = { noremap = false, silent = true, nowait = false } --noremp

-- nmap("n", "sn","<cmd>set number! <cr>",log )
-- nmap("n", "sw","<cmd>set wrap! <cr>",log )
-- nmap("n", "sr","<cmd>source $MYVIMRC <cr>",log)
-- nmap("n", "so","<cmd>on <cr>", log) --map split
nmap("n", "c", "dd", nolog)
nmap("n", "o", "o<esc>", log)
nmap("n", "O", "O<esc>", log)
nmap("n", "Y", "y$", log) --yank
nmap("n", "<leader>t", [[<cmd>lua require("stylua-nvim").format_file()<CR>]], nolog)

--resize windows
nmap("n", "<c-up>", "<c-w>+", log)
nmap("n", "<c-down>", "<c-w>-", log)
nmap("n", "<c-left>", "<c-w>>", log)
nmap("n", "<c-right>", "<c-w><", log)


nmap("n", "<c-z>", "<cmd>wall<cr>", log)
nmap("n", "<c-s>", "<cmd>w!<cr>", log)
nmap("n", "<F4>", "<cmd>bd <cr>", log)
nmap("n", "<tab>", "<cmd>Telescope find_files<cr>", log)
-- nmap("n", "z",, log)
nmap("n", "<c-k>", "<c-u>", log)
nmap("n", "<c-j>", "<c-d>", log)
nmap("n", "dk", "d'k", log)
nmap("n", "yk", "y'k", log)

nmap("n", "<F5>", "<cmd>Neotree toggle<cr>", log)
