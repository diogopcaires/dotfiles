local _2afile_2a = "fnl/config/plugin/baleia.fnl"
local _2amodule_name_2a = "config.plugins.baleia"
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
local baleia, nvim = autoload("baleia"), autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["baleia"] = baleia
_2amodule_locals_2a["nvim"] = nvim
nvim.g.baleia = baleia.setup({line_starts_at = 3, log = "DEBUG"})
nvim.ex.autocmd("BufWinEnter conjure-log-* call g:baleia.automatically(bufnr('%'))")
__fnl_global__command_21(BaleiaLogs, call(baleia.logger.show))
return _2amodule_2a