---@type LazySpec
return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = function(_, opts)
    return require("astrocore").extend_tbl(opts, {
      enable_check_bracket_line = false,
      map_c_h = true,
      map_c_w = true,
      map_bs = true,
      check_ts = true,
      enable_abbr = true,
      map_cr = true,
    })
  end,
}
