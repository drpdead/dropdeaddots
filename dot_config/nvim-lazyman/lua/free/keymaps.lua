local Util = require("util")
local Info = require("lazy.core.util").info
local settings = require("configuration")
local map = Util.map
local lualine_enabled = false
if settings.enable_statusline then
  lualine_enabled = true
end
local winbar_enabled = true
if settings.enable_winbar == "none" then
  winbar_enabled = false
end

-- Plugin Management
map("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy Menu" })
map("n", "<leader>U", "<cmd>Lazy update<cr>", { desc = "Lazy Update" })
-- Options
map("n", "<leader>o", "<cmd>options<cr>", { desc = "Options" })

-- Lazyman help
map("n", "<leader>hl", "<cmd>help Lazyman<cr>", { desc = "Lazyman Help" })
map("n", "<leader>hn", "<cmd>help Nvims<cr>", { desc = "Nvims Help" })
map("n", "<leader>hk", "<cmd>help Lazyman-Keymaps<cr>", { desc = "Lazyman Keymaps" })

if settings.enable_telescope_themes then
  map("n", "<leader>uC", "<cmd>Telescope themes<cr>", { desc = "Colorscheme switcher" })
end

-- Terminal commands
if settings.enable_terminal then
  if vim.fn.executable("htop") == 1 then
    map("n", "<leader>H", "<cmd>Htop<cr>", { desc = "Htop command" })
  end
  if vim.fn.executable("lazygit") == 1 then
    map("n", "<leader>gg", "<cmd>Lazygit<cr>", { desc = "Lazygit command" })
  end
  if vim.fn.executable("lazyman") == 1 then
    map("n", "<leader>lm", "<cmd>Lazyman<cr>", { desc = "Lazyman menu" })
    map("n", "<leader>lc", "<cmd>Lazyconf<cr>", { desc = "Lazyman configuration" })
    map("n", "<leader>lp", "<cmd>Lazyplug<cr>", { desc = "Lazyman plugins" })
  end
  if vim.fn.executable("asciiville") == 1 then
    map("n", "<leader>av", "<cmd>Asciiville<cr>", { desc = "Asciiville" })
  end
  if vim.fn.executable("mpplus") == 1 then
    map("n", "<leader>am", "<cmd>MusicPlayerPlus<cr>", { desc = "MusicPlayerPlus" })
    map("n", "<leader>aM", "<cmd>MusicPlayerMenu<cr>", { desc = "MusicPlayerPlus Menu" })
  end
else
  map("n", "<leader>gg", function()
    Util.float_term({ "lazygit" }, { cwd = Util.get_root() })
  end, { desc = "Lazygit (root dir)" })
  map("n", "<leader>gG", function()
    Util.float_term({ "lazygit" })
  end, { desc = "Lazygit (cwd)" })
end

if settings.file_tree == "neo-tree" then
  map("n", "<leader>T", "<cmd>Neotree toggle<CR>")
elseif settings.file_tree == "nvim-tree" then
  map("n", "<leader>T", "<cmd>NvimTreeFindFileToggle<CR>")
end

if settings.enable_games then
  map("n", "<leader>Gb", "<cmd>BlackJackNewGame<CR>", { desc = "Blackjack" })
  map("n", "<leader>Gh", "<cmd>:Hack<CR>", { desc = "Hack" })
  map("n", "<leader>Gf", "<cmd>:HackFollow<CR>", { desc = "Hack current buffer" })
  map("n", "<leader>Gs", "<cmd>Sudoku<CR>", { desc = "Sudoku" })
  map("n", "<leader>Gv", "<cmd>VimBeGood<CR>", { desc = "Vim-Be-Good" })
  map("n", "<leader>Gr", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it Rain" })
  map("n", "<leader>Gg", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Game of Life" })
end

-- better up/down
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
  map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
end
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
map(
  "n",
  "<leader>ur",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / clear hlsearch / diff update" }
)

map({ "n", "x" }, "gw", "*N", { desc = "Search word under cursor" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- Add undo break-points
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- Signature help
map({ "n" }, "<C-k>", function()
  require("lsp_signature").toggle_float_win()
end, { silent = true, noremap = true, desc = "toggle signature" })

map({ "n" }, "<leader>k", function()
  vim.lsp.buf.signature_help()
end, { silent = true, noremap = true, desc = "toggle signature" })

-- save file
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- new file
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

map("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
map("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })

if not Util.has("trouble.nvim") then
  map("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
  map("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })
end

-- stylua: ignore start

-- toggle options
if settings.enable_winbar == "barbecue" then
  map("n", "<leader>ub", function() require("barbecue.ui").toggle() end, { desc = "Toggle barbecue winbar" })
end
map("n", "<leader>uf", require("config.lsp.format").toggle, { desc = "Toggle format on Save" })
map("n", "<leader>us", function() Util.toggle("spell") end, { desc = "Toggle Spelling" })
map("n", "<leader>uw", function() Util.toggle("wrap") end, { desc = "Toggle Word Wrap" })
map("n", "<leader>ul", function()
  Util.toggle("relativenumber", true)
  Util.toggle("number")
end, { desc = "Toggle Line Numbers" })
local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
map("n", "<leader>uc", function() Util.toggle("conceallevel", false, { 0, conceallevel }) end,
  { desc = "Toggle Conceal" })

map("n", "<leader>ug", function()
  if vim.wo.signcolumn == "no" then
    vim.wo.signcolumn = "yes"
  elseif vim.wo.signcolumn == "yes" then
    vim.wo.signcolumn = "auto"
  else
    vim.wo.signcolumn = "no"
  end
  Info("Set signcolumn to " .. vim.wo.signcolumn, { title = "Option" })
end, { desc = "Toggle signcolumn" })

map("n", "<leader>uT", function()
  vim.opt.showtabline = vim.api.nvim_get_option('showtabline') == 0 and 2 or 0
  Info("Set showtabline to " .. vim.api.nvim_get_option('showtabline'), { title = "Option" })
end, { desc = "Toggle tabline" })

map("n", "<leader>uW", function()
  if winbar_enabled then
    require('lualine').hide({
      place = {'winbar'},
      unhide = false,
    })
    winbar_enabled = false
    Info("Disable winbar", { title = "Option" })
  else
    require('lualine').hide({
      place = {'winbar'},
      unhide = true,
    })
    winbar_enabled = true
    Info("Enable winbar", { title = "Option" })
  end
end, { desc = "Toggle winbar" })

map("n", "<leader>uL", function()
  if lualine_enabled then
    require('lualine').hide({
      place = {'statusline', 'tabline', 'winbar'},
      unhide = false,
    })
    vim.opt.showtabline = 0
    lualine_enabled = false
    Info("Disable statusline, tabline, and winbar", { title = "Option" })
  else
    require('lualine').hide({
      place = {'statusline', 'tabline', 'winbar'},
      unhide = true,
    })
    vim.opt.showtabline = 2
    lualine_enabled = true
    Info("Enable statusline, tabline, and winbar", { title = "Option" })
  end
end, { desc = "Toggle statusline, tabline, and winbar" })

map("n", "<leader>uS", function()
  local laststatus = vim.api.nvim_get_option('laststatus')
  if laststatus == 0 then
    vim.opt.laststatus = 2
  elseif laststatus == 2 then
    vim.opt.laststatus = 3
  elseif laststatus == 3 then
    vim.opt.laststatus = 0
  end
  Info("Set laststatus to " .. vim.api.nvim_get_option('laststatus'), { title = "Option" })
end, { desc = "Toggle statusline" })

map("n", "<leader>um", function()
  local mouse = vim.api.nvim_get_option('mouse')
  if mouse == "" then
    vim.opt.mouse = "nv"
    Info("Mouse Enabled: mouse = " .. vim.api.nvim_get_option('mouse'), { title = "Option" })
  else
    vim.opt.mouse = ""
    Info("Mouse Disabled", { title = "Option" })
  end
end, { desc = "Toggle mouse" })

map("n", "<leader>uN", function()
  local number = vim.wo.number                 -- local to window
  local relativenumber = vim.wo.relativenumber -- local to window
  if not number and not relativenumber then
    vim.wo.number = true
    Info("Set number to true", { title = "Option" })
  elseif number and not relativenumber then
    vim.wo.relativenumber = true
    Info("Set relativenumber to true", { title = "Option" })
  elseif number and relativenumber then
    vim.wo.number = false
    Info("Set number to false", { title = "Option" })
  else -- not number and relativenumber
    vim.wo.relativenumber = false
    Info("Set relativenumber to false", { title = "Option" })
  end
end, { desc = "Toggle number" })
map("n", "<leader>C", require("utils.functions").toggle_colorcolumn, { desc = "Toggle colorcolumn" })

-- gitignore
local gitignore = require("gitignore")
map("n", "<leader>gi", gitignore.generate, { desc = "Generate .gitignore" })

-- quit
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- highlights under cursor
if vim.fn.has("nvim-0.9.0") == 1 then
  map("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })
end

-- floating terminal
map("n", "<leader>ft", function() Util.float_term(nil, { cwd = Util.get_root() }) end, { desc = "Terminal (root dir)" })
map("n", "<leader>fT", function() Util.float_term() end, { desc = "Terminal (cwd)" })
map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

-- windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
map("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
map("n", "<leader>w|", "<C-W>v", { desc = "Split window right" })
map("n", "<leader>-", "<C-W>s", { desc = "Split window below" })
map("n", "<leader>|", "<C-W>v", { desc = "Split window right" })

-- tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- open url
map("n", "gh", "<cmd>OpenRepo<CR>", { desc = "Open URL" })
