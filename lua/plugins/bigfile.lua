
return {
"LunarVim/bigfile.nvim",
  config = function()
require("bigfile").setup {
  filesize = 1, -- size of the file in MiB, the plugin round file sizes to the closest MiB
}
  end,
}
