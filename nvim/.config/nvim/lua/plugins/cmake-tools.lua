-- CMake projects
return {
  "Civitasv/cmake-tools.nvim",
  cond = function()
    return vim.uv.fs_stat(vim.uv.cwd() .. "/CMakeLists.txt") ~= nil
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>mg", "<Cmd>CMakeGenerate<CR>", desc = "CMake generate" },
    { "<leader>mb", "<Cmd>CMakeBuild<CR>", desc = "CMake build" },
    { "<leader>mr", "<Cmd>CMakeRun<CR>", desc = "CMake run" },
    { "<leader>md", "<Cmd>CMakeDebug<CR>", desc = "CMake debug" },
    { "<leader>mt", "<Cmd>CMakeSelectBuildTarget<CR>", desc = "Select build target" },
    { "<leader>ml", "<Cmd>CMakeSelectLaunchTarget<CR>", desc = "Select launch target" },
    { "<leader>mp", "<Cmd>CMakeSelectConfigurePreset<CR>", desc = "Select configure preset" },
    { "<leader>mc", "<Cmd>CMakeClean<CR>", desc = "CMake clean" },
  },
  opts = {
    cmake_build_directory = "build",
    cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
  },
}
