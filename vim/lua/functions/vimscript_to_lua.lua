function nnoremap(map_keys, command)
  local opts = { noremap=true, silent=true }
  vim.api.nvim_set_keymap('n', map_keys, command, opts)
end

function nmap(map_keys, command)
  local opts = { noremap=false, silent=true }
  vim.api.nvim_set_keymap('n', map_keys, command, opts)
end
