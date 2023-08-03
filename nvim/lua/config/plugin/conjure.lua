local _2afile_2a = "nvim/fnl/config/plugin/conjure.fnl"
local _2amodule_name_2a = "config.plugins.conjure"
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
nvim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
nvim.g["conjure#client#clojure#nrepl#eval#auto_require"] = false
nvim.g["conjure#client#clojure#nrepl#test#current_form_names"] = {"deftest", "defflow"}
nvim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 0
nvim.g["conjure#mapping#doc_word"] = "K"
return _2amodule_2a