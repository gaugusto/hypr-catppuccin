return {pkgs={{name="noice.nvim",spec=function()
return {
  -- nui.nvim can be lazy loaded
  { "MunifTanjim/nui.nvim", lazy = true },
  {
    "folke/noice.nvim",
  },
}

end,file="lazy.lua",dir="/home/gaugusto/.local/share/nvim/lazy/noice.nvim",source="lazy",},{name="plenary.nvim",spec={"nvim-lua/plenary.nvim",lazy=true,},file="community",dir="/home/gaugusto/.local/share/nvim/lazy/plenary.nvim",source="lazy",},},version=12,}