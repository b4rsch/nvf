{
  config.vim.keymaps = [
    {
      mode = ["n" "v" "t"];
      key = "<C-q>";
      action = "<CMD>q<CR>";
    }
    {
      mode = ["n"];
      key = "<leader>tr";
      action = "<CMD>lua require('neotest').run.run()<CR>";
    }
    {
      mode = ["n"];
      key = "<leader>tf";
      action = "<CMD>lua require('neotest').run.run(vim.fn.expand('%'))<CR>";
    }
    {
      mode = ["n"];
      key = "<leader>td";
      action = "<CMD>lua require('neotest').run.run({strategy = 'dap'})<CR>";
    }
  ];
}
