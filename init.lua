--           cd               c,
--         ,oxol              cdl.
--       :ooodllc,            coddl.
--     .coddddlcllc           coooooo'
--    ;:;:odddlcllll.         :ooooooox
--    ;;;;;:ddlclllll'        :oooooooo
--    ;;;;;,;llclllllll       :lllllllo
--    ;;;;;;;;;llllllllc.     ;llllllll
--    ;;;;;;;;. :cccccccc:    ;llllllll
--    ,,,,,,,;.  ,ccccccccc.  ;llllllll
--    ,,,,,,,;.   .lcccccccc. ;cccccccl
--    ,,,,,,,;.     'cccccccc,ccccccccc
--    ,,,,,,,,.      '::::::::ccccccccc
--    ,,,,,,,,.        :::::::clc:::::c
--    ,,,,,,,,.         .c::::cllcc:::c
--     .,,,,,,.           c::::cccc::.
--       .''''.            ,;;:cccc.
--          ''.             .::c:
--            .               :
--neovim config!
--all of the config is imported into this main init.lua file to stay organized (:

-- require configuration files
require "user.plugins"
require "user.options"
require "user.keymaps"
require "user.colorscheme"
--looks for init in the lsp directory
require "user.lsp"

--PLUGINS
require("bufferline").setup{}
require "user.plugins.cmp"
require "user.plugins.treesitter"
require "user.plugins.nvimtree"
require "user.plugins.luaLine"
require "user.plugins.telescope"
require "user.plugins.toggleterm"
require "user.plugins.indent-blankline"
--bufferline config doesen't work idk its not in lua reasearch this
--require "user.plugins.bufferLine"
