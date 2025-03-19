local map = vim.keymap.set

-- 取消高亮搜索
map("n", "<leader>nh", ":nohl<CR>", { desc = "清除搜索高亮" })

-- 文件操作
map("n", "<leader>sv", ":vsplit<CR>", { desc = "垂直分屏" })
map("n", "<leader>sh", ":split<CR>", { desc = "水平分屏" })

-- 插件快捷键（例如 Telescope）
map("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "查找文件" })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "全局搜索" })
