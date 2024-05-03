---@type LazySpec
return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "  ",
        "  ,-.       _,---._ __  / \\",
        " /  )    .-'       `./ /   \\",
        "(  (   ,'            `/    /|",
        " \\  `-\"             \\'\\   / |",
        "  `.              ,  \\ \\ /  |",
        "   /`.          ,'-`----Y   |",
        "  (            ;        |   '",
        "  |  ,-.    ,-'         |  /",
        "  |  | (   |            | /",
        "  )  |  \\  `.___________|/",
        "  `--'   `--'",
        "  ",
      }
      return opts
    end,
  },
}
