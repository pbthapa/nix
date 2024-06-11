return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local keymap = vim.keymap

      keymap.set("n", "<F2>", ":lua require'dap'.step_into()<CR>")
      keymap.set("n", "<F3>", ":lua require'dap'.step_out()<CR>")
      keymap.set("n", "<F5>", ":lua require'dap'.step_over()<CR>")
      keymap.set("n", "<F12>", ":lua require'dap'.continue()<CR>")
      keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
      keymap.set("n", "<leader>dB", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>")
       -- stylua: ignore
      keymap.set("n", "<leader>dp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
      keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    -- stylua: ignore
    keys = {
      { "<leader>du", function() require("dapui").toggle({}) end, desc = "Dap UI", },
      { "<leader>de", function() require("dapui").eval() end, desc = "Eval", mode = { "n", "v" }, },
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end

      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("mason-nvim-dap").setup({
        ensure_installed = { "python", "javadbg", "javatest", "bash" },
        automatic_installation = true,
      })
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    ft = { "python" },
    config = function()
      require("dap-python").setup("~/.local/share/lazyvim/mason/packages/debugpy/venv/bin/python")
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    config = function(_, opts)
      require("nvim-dap-virtual-text").setup(opts)
    end,
  },
}
