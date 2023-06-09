--                                                          .OO.
--                                            ,WO          :KkkKl
--                                        dNK0Okk0;     ,00Oxc:kk00;
--                                   .WX0Okkoc'.lkO'        ;xd,
--                               xNK0Okxl;.      dk0.        xx
--                           oXK0kkxc,.          .xk0                ,Kl
--                          dkko:,.               'kkO               KkO,
--                     .WNK0Okx.                   'kkO          kXX0koxOKXN
--                 kNX0Okkdocokx.                   ;kkx            cd:ok
--              ,KOkkdoc;,''''dkd                    ckOc            ,kc
--               kkc,''''''''',xkl                    okO'
--           cNXKkkx,'''''''''',xkc               ..,:okc    00
--      .NXK0kkxxdxkd''''''''''';kk;         .':cdkk.       'kk.
--    O0Okkxdolcccckko'''''''''''ckk'  .';coxk.          :KNOkkOXNc
--    lkklccccccccclkkl'''''',:loxkkxoxk                   kx::kk.
--     dkoccccclodxkkkkc,:ldxkkk;                           .kk.
--      xkoodxkkc     :kko    kk:                            cl
--       .o.                  kk:
--                        'WNNkkKNWx
--                      cKOkxdddddkk0X
--                     .Okxlcccccclokkc
--                     okkxxxxxxxxxxkkO
--                    OOk     kk;    lkK.
--                   Xko      kk:     ;k0,
--                 ,0k:       kk:      .kOd
--                oOk.        kk:        kkK
--               XOk          kk:         :k0'
--              Kkd           kk:          ,kO:
-- telescope configuration


--keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
    find_files = {
      theme = "dropdown",
    }
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
