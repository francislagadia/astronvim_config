return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.syntax.vim-easy-align" },
  { import = "astrocommunity.test.neotest" },
  {
    "nvim-neotest/neotest",
    opts = function()
      return {
        -- your neotest config here
        adapters = {
          require("neotest-python")({
            dap = { justMyCode = false },
            -- Command line arguments for runner
            -- Can also be a function to return dynamic values
            args = {"--log-level", "DEBUG"},
            -- Runner to use. Will use pytest if available by default.
            -- Can be a function to return dynamic value.
            runner = "pytest",
          })
        }
      }
    end,
  }
}
