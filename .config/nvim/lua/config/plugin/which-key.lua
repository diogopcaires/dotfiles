local _2afile_2a = "nvim/fnl/config/plugin/which-key.fnl"
local _2amodule_name_2a = "config.plugin.which-key"
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
local which_key = autoload("which-key")
do end (_2amodule_locals_2a)["which-key"] = which_key
which_key.register({["<leader>"] = {b = {name = "Buffers"}, c = {name = "Color-clipboard"}, e = {name = "Errors"}, f = {name = "Files", e = {":Telescope file_browser<cr>", "Explorer"}, t = {":NvimTreeToggle<cr>", "Tree toggle"}}, g = {name = "Git/Version Control"}, h = {name = "Help"}, i = {name = "Insertion"}, j = {name = "Jump"}, l = {name = "Layouts"}, n = {name = "Narrow/Numbers"}, o = {name = "User Bindings"}, p = {name = "Projects"}, q = {name = "Quit"}, t = {name = "Tabs"}, T = {name = "Toggle"}, w = {name = "Windows"}}})
which_key.setup({plugins = {marks = true, registers = true, spelling = {suggestions = 20, enabled = false}, presets = {operators = true, motions = true, text_objects = true, windows = true, nav = true, z = true, g = true}}, operators = {gc = "Comments"}, key_labels = {[{"<cr>"}] = "RET", [{"<space>"}] = "SPC", [{"<tab>"}] = "TAB"}, icons = {breadcrumb = "\194\187", separator = "\226\158\156", group = "+"}, popup_mappings = {scroll_down = "<c-d>", scroll_up = "<c-u>"}, window = {border = "none", position = "bottom", margin = {1, 0, 1, 0}, padding = {2, 2, 2, 2}, winblend = 0}, layout = {height = {min = 4, max = 25}, width = {min = 20, max = 50}, spacing = 3, align = "left"}, hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, show_help = true, triggers = "auto", triggers_blacklist = {i = {"j", "k"}, v = {"j", "k"}}, ignore_missing = false})
return _2amodule_2a