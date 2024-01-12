-- :TSInstall lua
-- NOTE: https://github.com/AstroNvim/AstroNvim/commit/377db3f7d6273779533c988dadc07a08e0e43f2e new textobject
-- NOTE: treesitter new textobject. k: block, c: class, ?: conditional, f: function, l: loop, a: parameter, ""< | > | A ,F ,K" swap textobject
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Ensure that opts.ensure_installed exists and is a table or string "all".
    -- if opts.ensure_installed ~= "all" then end
    return require("astrocore").extend_tbl(opts, {
      autotag = {
        enable = true,
        enable_close_on_slash = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          node_incremental = "v",
          node_decremental = "V",
        },
      },
    })
  end,
}
