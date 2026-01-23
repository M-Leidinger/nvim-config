return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "VeryLazy",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = false,  -- Disable inline suggestions
        },
        panel = {
          enabled = false,  -- Disable panel
        },
      })
    end,
  },
  
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    cmd = "CopilotChat",
    keys = {
      -- Toggle chat
      { "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Toggle Copilot Chat" },
      
      -- Quick actions
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", desc = "Explain Code", mode = {"n", "v"} },
      { "<leader>cr", "<cmd>CopilotChatReview<cr>", desc = "Review Code", mode = {"n", "v"} },
      { "<leader>cf", "<cmd>CopilotChatFix<cr>", desc = "Fix Code", mode = {"n", "v"} },
      { "<leader>co", "<cmd>CopilotChatOptimize<cr>", desc = "Optimize Code", mode = {"n", "v"} },
      { "<leader>cd", "<cmd>CopilotChatDocs<cr>", desc = "Generate Docs", mode = {"n", "v"} },
      { "<leader>ct", "<cmd>CopilotChatTests<cr>", desc = "Generate Tests", mode = {"n", "v"} },
      { "<leader>cD", "<cmd>CopilotChatFixDiagnostic<cr>", desc = "Fix Diagnostic", mode = {"n", "v"} },
      { "<leader>cm", "<cmd>CopilotChatCommit<cr>", desc = "Generate Commit Message", mode = {"n", "v"} },
    },
    opts = {
      debug = false,
      window = {
        layout = "vertical",  -- or "float", "horizontal"
        width = 0.4,
      },
      mappings = {
        complete = {
          insert = '<Tab>',
        },
        close = {
          normal = 'q',
          insert = '<C-c>',
        },
        reset = {
          normal = '<C-r>',
          insert = '<C-r>',
        },
        submit_prompt = {
          normal = '<CR>',
          insert = '<C-s>',
        },
        accept_diff = {
          normal = '<C-y>',
          insert = '<C-y>',
        },
      },
    },
  },
}

