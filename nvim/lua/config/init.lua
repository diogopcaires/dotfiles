local _2afile_2a = "fnl/config/init.fnl"
local _2amodule_name_2a = "config.init"
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
local core, nvim, str, util = autoload("aniseed.core"), autoload("aniseed.nvim"), autoload("aniseed.string"), autoload("config.util")
do end (_2amodule_locals_2a)["core"] = core
_2amodule_locals_2a["nvim"] = nvim
_2amodule_locals_2a["str"] = str
_2amodule_locals_2a["util"] = util
nvim.set_keymap("n", "<space>", "<nop>", {noremap = true})
nvim.g.mapleader = " "
nvim.g.maplocalleader = ","
nvim.set_keymap("i", "fd", "<ESC>", {noremap = true})
util.lnnoremap("ch", "Telescope neoclip")
util.lnnoremap(".", "ToggleTerm")
util.lnnoremap("tt", "Telescope tele_tabby list")
util.lnnoremap("td", "tabclose")
util.lnnoremap("tn", "tabnext")
util.lnnoremap("tp", "tabprevious")
util.lnnoremap("to", "tabonly")
util.lnnoremap("tm", "tab sp")
util.lnnoremap("wh", "wincmd h")
util.lnnoremap("wj", "wincmd j")
util.lnnoremap("wk", "wincmd k")
util.lnnoremap("wl", "wincmd l")
util.lnnoremap("wm", "only")
util.lnnoremap("ws", "split")
util.lnnoremap("wv", "vsplit")
util.lnnoremap("<tab>", "b#")
util.lnnoremap("ba", "ball")
util.lnnoremap("bb", "Telescope buffers")
util.lnnoremap("bd", "bdelete")
util.lnnoremap("bn", "bnext")
util.lnnoremap("bp", "bprevious")
util.lnnoremap("f/", "Telescope live_grep")
util.lnnoremap("fb", "Telescope file_browser")
util.lnnoremap("ff", "Telescope find_files")
util.lnnoremap("fp", "Telescope find_files")
util.lnnoremap("fs", "write")
util.lnnoremap("fe", "NvimTreeToggle")
util.lnnoremap("pp", "Telescope project")
util.lnnoremap("pt", "TodoTelescope")
util.lnnoremap("hh", "Telescope help_tags")
util.lnnoremap("jh", "Telescope heading")
util.lnnoremap("dtb", "Telescope terraform_doc")
util.lnnoremap("cs", "Telescope colorscheme")
util.lnnoremap("Pl", "Telescope packer")
util.lnnoremap("Pi", "PackerInstall")
util.lnnoremap("Ps", "PackerSync")
util.lnnoremap("Pu", "PackerUpdate")
util.lnnoremap("Ptu", "TSUpdate")
util.lnnoremap("Pti", "TSInstallInfo")
util.lnnoremap("qa", "quitall")
util.lnnoremap("qq", "quit")
util.lnnoremap("qQ", "quit!")
util.lnnoremap("gd", "DiffviewOpen")
util.lnnoremap("gs", "Neogit")
util.lnnoremap("gga", "Octo actions")
util.lnnoremap("gggl", "Octo gist list")
util.lnnoremap("ggib", "Octo issue browser")
util.lnnoremap("ggic", "Octo issue create")
util.lnnoremap("ggil", "Octo issue list")
util.lnnoremap("ggis", "Octo issue search")
util.lnnoremap("ggiu", "Octo issue url")
util.lnnoremap("ggpb", "Octo pr browser")
util.lnnoremap("ggpc", "Octo pr create")
util.lnnoremap("ggpl", "Octo pr list")
util.lnnoremap("ggps", "Octo pr search")
util.lnnoremap("ggpu", "Octo pr url")
util.lnnoremap("ggrb", "Octo repo browse")
util.lnnoremap("ggrf", "Octo repo fork")
util.lnnoremap("ggrl", "Octo repo list")
util.lnnoremap("ggru", "Octo repo url")
util.lnnoremap("cc", "(i#_<ESC>")
util.lnnoremap("cu", "<Cmd>let s=@/<CR>l?\\v(#_)+<CR>dgn:let @/=s<CR>")
nvim.set_keymap("t", "<esc><esc>", "<c-\\><c-n>", {noremap = true})
local function _1_()
  vim.opt_local.commentstring = ";; %s"
  return nil
end
vim.api.nvim_create_autocmd("FileType", {group = vim.api.nvim_create_augroup("commentary_config", {clear = true}), pattern = {"lisp", "clojure", "racket", "fennel"}, callback = _1_})
nvim.ex.autocmd("BufNewFile,BufRead", ".edn,.clj,.cljstyle", "set filetype=clojure")
util.nnoremap("<CR>", "noh<CR><CR>")
util["set-global-variable"](vim_markdown_conceal, 2)
nvim.ex.autocmd("FocusGained,BufEnter", "*", ":checktime")
nvim.ex.set("nowrap")
do
  local options = {encoding = "utf-8", spelllang = "en_gb", number = true, relativenumber = true, ruler = true, completeopt = "menuone,noselect", wildmenu = true, wildignore = "*/tmp/*,*.so,*.swp,*.zip", ignorecase = true, smartcase = true, clipboard = "unnamedplus", listchars = str.join(",", {"tab:\226\150\182-", "trail:\226\128\162", "extends:\194\187", "precedes:\194\171", "eol:\194\172"}), expandtab = true, splitbelow = true, splitright = true, hlsearch = true, signcolumn = "number", list = false, errorbells = false}
  for option, value in pairs(options) do
    util["set-global-option"](option, value)
  end
end
util.nnoremap("<C-Space>", "NvimTreeToggle<CR>")
util.nnoremap("<c-s-f>", "Telescope live_grep")
util.nnoremap("<c-f>", "Telescope find_files")
util.nnoremap("<C-s-l>", ":ConjureEvalBuf<CR>")
util.nnoremap("<C-CR>", "Telescope lsp_definitions")
util.nnoremap("<C-t>", ":FloatermToggle")
util.nnoremap("<C-s-t>", ":FloatermNew")
util.lnnoremap("fn", "FloatermNext")
util.lnnoremap("fp", "FloatermPrevious")
require("config.plugin")
return _2amodule_2a