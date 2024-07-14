require("lazy").setup({
  -- Grupo de Plugins Gerais
  {
    'tomasr/molokai',                      -- Tema Molokai
    'williamboman/mason.nvim',             -- Gerenciador de LSPs e ferramentas
    'williamboman/mason-lspconfig.nvim',   -- Integração do Mason com o LSP
    'neovim/nvim-lspconfig',               -- Configurações padrão do LSP para Neovim
    'lukas-reineke/indent-blankline.nvim', -- Linhas de indentação
    'akinsho/toggleterm.nvim',             -- Terminal flutuante
    'nvim-lualine/lualine.nvim',           -- Barra de status LuaLine
    'arkav/lualine-lsp-progress',          -- Progresso do LSP na LuaLine
    'karb94/neoscroll.nvim',               -- Scroll suave
    'folke/which-key.nvim',                -- Visualização de atalhos
    'itchyny/vim-cursorword',              -- Realça a palavra sob o cursor
    'hrsh7th/nvim-cmp',                    -- Autocompletar
    'hrsh7th/cmp-nvim-lsp',                -- Fonte LSP para nvim-cmp
    'hrsh7th/cmp-path',                    -- Completar caminhos
    'numToStr/Comment.nvim',               -- Comentar código facilmente
  },
  -- Grupo de Plugins NeoTree
  {
    'nvim-neo-tree/neo-tree.nvim',   -- Explorador de arquivos NeoTree
    dependencies = {
      'nvim-lua/plenary.nvim',       -- Utilitários Lua
      'nvim-tree/nvim-web-devicons', -- Ícones para NeoTree
      'MunifTanjim/nui.nvim',        -- Biblioteca de UI
    }
  },
  -- Grupo de Plugins LuaSnip
  {
    'L3MON4D3/LuaSnip',            -- Snippets em Lua
    run = 'make install_jsregexp', -- Comando para instalar regex em JS
    dependencies = {               -- Snippets adicionais
      'rafamadriz/friendly-snippets'
    },
  },
  -- Grupo de Plugins Telescope
  {
    'nvim-telescope/telescope.nvim',               -- Ferramenta de busca e visualização
    tag = '0.1.6',                                 -- Versão específica
    dependencies = {
      'nvim-lua/plenary.nvim',                     -- Utilitários Lua
      'nvim-lua/popup.nvim',                       -- Popup API
      'nvim-telescope/telescope-media-files.nvim', -- Visualização de arquivos de mídia
    }
  },
  -- Grupo de Plugins Alpha
  {
    'goolord/alpha-nvim',            -- Tela inicial personalizada
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- Ícones
      'nvim-lua/plenary.nvim'        -- Utilitários Lua
    },
  },
  -- Grupo de plugins Auto-session
  {
    'rmagatti/auto-session',
    dependencies = {
      'nvim-telescope/telescope.nvim', -- Only needed if you want to use sesssion lens
    },
  },
})
