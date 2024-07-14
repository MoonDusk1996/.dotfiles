local opts = {
  log_level = 'info',
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath('data') .. "/sessions/",
  auto_session_enabled = true,
  auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
}

require('auto-session').setup(opts)
