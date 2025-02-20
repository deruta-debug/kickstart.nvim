return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function()
    require('lazy').load { plugins = { 'markdown-preview.nvim' } }
    vim.fn['mkdp#util#install']()
  end,
  init = function()
    vim.g.mkdp_filetypes = { 'markdown' }
    vim.g.mkdp_echo_preview_url = true
  end,
}
