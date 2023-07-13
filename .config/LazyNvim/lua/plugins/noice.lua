return {
  "folke/noice.nvim",
  config = require("noice").setup({
    -- messages = {
    --   enabled = false,
    -- },
    cmdline = {
      view = "cmdline",
    },
    routes = {
      -- remove the "written" messages. actually all with kind "" (yeah, empty)
      {
        filter = {
          event = "msg_show",
          kind = "",
        },
        opts = { skip = true },
      },
      -- show the "recording @q" message
      {
        view = "notify",
        filter = { event = "msg_showmode" },
      },
      -- larger messages go to a split
      {
        filter = {
          event = "notify",
          min_height = 15,
        },
        view = "split",
      },
    },
  }),
}
