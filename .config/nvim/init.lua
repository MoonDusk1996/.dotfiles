-- Define o caminho para o diretório onde o lazy.nvim será clonado
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- clona o repositório do lazy.nvim do GitHub
vim.fn.system({
  "git",
  "clone",
  "--filter=blob:none",                     -- Clona sem histórico para economizar espaço
  "https://github.com/folke/lazy.nvim.git", -- URL do repositório
  "--branch=stable",                        -- Utiliza a versão estável mais recente
  lazypath,                                 -- Diretório de destino do clone
})

-- Adiciona o diretório do lazy.nvim ao início da lista de paths runtime do Neovim
vim.opt.rtp:prepend(lazypath)

-- Carrega os módulos personalizados
require("plugins")       -- Carrega os plugins instalados
require("options")       -- Configurações gerais do Neovim
require("plugin_config") -- Configurações específicas de plugins
