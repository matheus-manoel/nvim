local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local status_ok, action_generate = pcall(require, "telescope.actions.generate")
if not status_ok then
	return
end

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["?"] = action_generate.which_key {
          name_width = 20, -- typically leads to smaller floats
          max_height = 0.5, -- increase potential maximum height
          separator = " > ", -- change sep between mode, keybind, and name
          close_with_action = false, -- do not close float on action
        }
      }
    }
  }
}
