local _2afile_2a = "fnl/config/plugin/vim-test.fnl"
local _2amodule_name_2a = "config.plugins.vim-test"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("aniseed.autoload")).autoload
local nvim = autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["nvim"] = nvim
do
  local opts = {noremap = true, silent = true}
  nvim.set_keymap("n", "<leader>ta", ":TestSuite<CR>", opts)
  nvim.set_keymap("n", "<leader>tc", ":TestNearest<CR>", opts)
  nvim.set_keymap("n", "<leader>tf", ":TestFile<CR>", opts)
  nvim.set_keymap("n", "<leader>tg", ":TestVisit<CR>", opts)
  nvim.set_keymap("n", "<leader>tl", ":TestLast<CR>", opts)
end
nvim.g["test#strategy"] = "neovim"
return _2amodule_2a