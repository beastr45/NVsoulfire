-- look for a color scheme but if not found we will just load the default color scheme
--replace colorscheme string with the colorscheme that you want.
local colorscheme = "PaperColor"

--uses the sting in colorscheme variable and uses it to set vim command colorscheme
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found! defaulting to vim colorscheme - bear")
    return
end
