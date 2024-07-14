local status_ok, toggleterm= pcall(require, "toggleterm")
if not status_ok then
    return
end

local setup = {
 open_mapping = [[<c-s>]],
 direction = 'float', -- 'vertical' | 'horizontal' | 'tab' | 'float'
}
toggleterm.setup(setup)
