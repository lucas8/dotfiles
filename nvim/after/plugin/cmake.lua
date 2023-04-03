vim.g.cmake_build_type = "Debug"
vim.g.cmake_build_dir_prefix = ""

vim.keymap.set("n", "<leader>cg", ':CMake<cr>', {})
vim.keymap.set("n", "<leader>cr", ':CMakeRun<cr>', {})
vim.keymap.set("n", "<leader>cb", ':CMakeBuild<cr>', {})
vim.keymap.set("n", "<leader>cq", ':CMakeClose<cr>', {})
vim.keymap.set("n", "<leader>cc", ':CMakeClean<cr>', {})
