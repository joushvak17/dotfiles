-- Debugging
return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "leoluz/nvim-dap-go",
    "mfussenegger/nvim-dap-python",
  },
  keys = {
    { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle breakpoint" },
    {
      "<leader>dB",
      function()
        require("dap").set_breakpoint(vim.fn.input("Condition: "))
      end,
      desc = "Conditional breakpoint",
    },
    { "<leader>dc", function() require("dap").continue() end, desc = "Continue / start" },
    { "<leader>do", function() require("dap").step_over() end, desc = "Step over" },
    { "<leader>di", function() require("dap").step_into() end, desc = "Step into" },
    { "<leader>du", function() require("dap").step_out() end, desc = "Step out" },
    { "<leader>dl", function() require("dap").run_last() end, desc = "Run last" },
    { "<leader>dr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
    { "<leader>dt", function() require("dap").terminate() end, desc = "Terminate" },
    { "<leader>dU", function() require("dapui").toggle() end, desc = "Toggle debug UI" },
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    dap.listeners.before.attach.dapui_config = dapui.open
    dap.listeners.before.launch.dapui_config = dapui.open
    dap.listeners.before.event_terminated.dapui_config = dapui.close
    dap.listeners.before.event_exited.dapui_config = dapui.close

    -- Adapters
    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        command = "codelldb",
        args = { "--port", "${port}" },
      },
    }
    require("dap-go").setup()
    require("dap-python").setup("debugpy-adapter")

    -- C, C++ and Rust launch
    local codelldb_launch = {
      {
        name = "Launch executable",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input("Executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
      },
    }
    dap.configurations.c = codelldb_launch
    dap.configurations.cpp = codelldb_launch
    dap.configurations.rust = codelldb_launch
  end,
}
