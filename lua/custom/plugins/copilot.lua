return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        keymap = {
          accept = "<Tab>",
          dismiss = "<c-x>"
        }
      }
    })
  end,
}
