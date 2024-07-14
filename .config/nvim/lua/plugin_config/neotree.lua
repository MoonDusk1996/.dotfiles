local status_ok, neotree = pcall(require, "neo-tree")
if not status_ok then
  return
end
local setup = {
  window = {
    width = 30,
  },
    auto_clean_after_session_restore = true,
}

neotree.setup(setup)
