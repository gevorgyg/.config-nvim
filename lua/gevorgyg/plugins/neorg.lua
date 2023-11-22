return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { { "nvim-lua/plenary.nvim" }, { "nvim-neorg/neorg-telescope" } },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.integrations.telescope"] = {},
        ["core.keybinds"] = {
          config = {
            hook = function(keybinds)
              keybinds.map_event_to_mode("norg", {
                n = { -- Bind keys in normal mode
                  { "<leader>fl", "core.integrations.telescope.find_linkable" },
                  { "<leader>ifl", "core.integrations.telescope.insert_file_link" },
                  { "<leader>hd", "core.integrations.telescope.search_headings" },
                },
              }, {
                silent = true,
                noremap = true,
              })
            end
          }
        },
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              Notes = "~/Notes",
            },
            default_workspace = "Notes"
          },
        },
      },
    }
  end,
}
