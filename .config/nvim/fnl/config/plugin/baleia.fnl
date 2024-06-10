(module config.plugins.baleia
  {autoload {nvim   aniseed.nvim
             baleia baleia}})

(set nvim.g.baleia (baleia.setup {:line_starts_at 3 :log "DEBUG"}))
(nvim.ex.autocmd "BufWinEnter conjure-log-* call g:baleia.automatically(bufnr('%'))")

(command! BaleiaLogs (call baleia.logger.show))
