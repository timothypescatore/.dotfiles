vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Better viewing
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'g,', 'g,zvzz')
vim.keymap.set('n', 'g;', 'g;zvzz')

-- Better escape using jk in insert and terminal mode
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('t', 'jk', '<C-\\><C-n>')
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l')

-- Better indent
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Paste over currently selected text without yanking it
vim.keymap.set('v', 'p', '"_dP')

-- Resize window using <shift> arrow keys
vim.keymap.set('n', '<S-Up>', '<CMD>resize +2<CR>')
vim.keymap.set('n', '<S-Down>', '<CMD>resize -2<CR>')
vim.keymap.set('n', '<S-Left>', '<CMD>vertical resize -2<CR>')
vim.keymap.set('n', '<S-Right>', '<CMD>vertical resize +2<CR>')

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '<leader>qq', '<CMD>qa<CR>', { desc = 'Quit all' })
vim.keymap.set('n', '<leader>bw', '<CMD>update!<CR>', { desc = 'Save' })
vim.keymap.set('n', '<leader>bW', '<CMD>wa<CR>', { desc = '[W]rite [A]ll' })
vim.keymap.set('n', '<leader>bd', '<CMD>bdelete<CR>', { desc = 'Buffer Delete' })
vim.keymap.set('n', '<leader>bx', '<C-W>c', { desc = 'Buffer Close' })
vim.keymap.set('n', '<C-j>', '<C-W>j', { desc = 'Window Down' })
vim.keymap.set('n', '<C-k>', '<C-W>k', { desc = 'Window Up' })
vim.keymap.set('n', '<C-h>', '<C-W>h', { desc = 'Window Left' })
vim.keymap.set('n', '<C-l>', '<C-W>l', { desc = 'Window Right' })

-- Quickfix navigation
vim.keymap.set('n', '<C-Down>', '<CMD>cnext<CR>', { desc = 'Quickfix next' })
vim.keymap.set('n', '<C-Up>', '<CMD>cprev<CR>', { desc = 'Quickfix prev' })

-- Tabs
vim.keymap.set('n', '<leader><tab>d', '<CMD>tabclose<CR>', { desc = 'Close' })

vim.keymap.set('n', '<F5>', '<CMD>e<CR>', { desc = 'Reload file' })
vim.keymap.set('n', '<F10>', "<CMD>let $VIM_DIR=expand('%:p:h')<CR><cmd>terminal<CR>cd $VIM_DIR<cr>", { desc = 'Current DIR Terminal' })

-- Diagnostics
vim.keymap.set('n', '<leader>cj', '<CMD>lua vim.diagnostic.goto_next()<CR>', { desc = 'Next Diagnostic' })
vim.keymap.set('n', '<leader>ck', '<CMD>lua vim.diagnostic.goto_prev()<CR>', { desc = 'Previous Diagnostic' })


 vim.keymap.set( 'n','<leader>sf', '<CMD>Ex<CR>', {desc = 'Explore' })
 vim.keymap.set( 'n','<leader>sF', '<CMD>Vex<CR>', {desc = 'Vertical Explore' })

-------------------- Plugins --------------------------
vim.keymap.set('n', '<leader>ct', '<CMD>Trouble diagnostic toggle filter.buf=0<CR>', { desc = '[T]rouble Document' })
vim.keymap.set('n', '<leader>cT', '<CMD>Trouble diagnostic toggle <CR>', { desc = '[T]rouble' })
vim.keymap.set('n', '<leader>xq', '<CMD>Trouble qflist toggle <CR>', { desc = '[T]rouble' })
vim.keymap.set('n', '<leader>xl', '<CMD>Trouble loclist toggle <CR>', { desc = '[T]rouble' })

-- Grapple
vim.keymap.set("n", "<leader>ma", "<cmd>Grapple select index=1<cr>")
vim.keymap.set("n", "<leader>ms", "<cmd>Grapple select index=2<cr>")
vim.keymap.set("n", "<leader>md", "<cmd>Grapple select index=3<cr>")
vim.keymap.set("n", "<leader>mf", "<cmd>Grapple select index=4<cr>")
vim.keymap.set("n", "<leader>mg", "<cmd>Grapple select index=5<cr>")

-- Gitsigns
 vim.keymap.set('n', '<leader>gs', '<CMD>Gitsigns stage_hunk<CR>', { desc = '[s]tage hunk' })
 vim.keymap.set('n', '<leader>gu', '<CMD>Gitsigns undo_stage_hunk<CR>', { desc = '[u]ndo-stage hunk' })
 vim.keymap.set('n', '<leader>gr', '<CMD>Gitsigns reset_hunk<CR>', { desc = '[r]eset-hunk' })
 vim.keymap.set('n', '<leader>gj', '<CMD>Gitsigns next_hunk<CR>', { desc = 'next-hunk' })
 vim.keymap.set('n', '<leader>gk', '<CMD>Gitsigns prev_hunk<CR>', { desc = 'prev-hunk' })
 vim.keymap.set('n', '<leader>gb', '<CMD>Gitsigns blame_line<CR>', { desc = 'prev-hunk' })
 vim.keymap.set('n', '<leader>gq', '<CMD>Gitsigns setqflist<CR>', { desc = 'prev-hunk' })
-- Diffview
 vim.keymap.set('n', '<leader>gd', '<CMD>DiffviewOpen<CR>', { desc = '[d]iffview Open' })
 vim.keymap.set('n', '<leader>gD', '<CMD>DiffviewOpen<CR>', { desc = '[D]iffview Close' })
 vim.keymap.set('n', '<leader>gh', '<CMD>DiffviewFileHistory %<CR>', { desc = 'File [H]istory' })
 vim.keymap.set('n', '<leader>gH', '<CMD>DiffviewFileHistory<CR>', { desc = 'All File [H]istory' })
 vim.keymap.set('n', '<leader>gR', '<CMD>DiffviewRefresh<CR>', { desc = 'All File [H]istory' })
 -- Blame
 vim.keymap.set('n', '<leader>gB', '<CMD>ToggleBlame<CR>', { desc = 'Blame' })