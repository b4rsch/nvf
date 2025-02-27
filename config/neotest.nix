{pkgs, ...}: {
  config.vim.extraPlugins = with pkgs.vimPlugins; {
    neotest-go = {
      package = neotest-go;
    };
    neotest = {
      package = neotest;
      setup = ''
        require("neotest").setup({
          adapters = {
            require("neotest-go")({
              experimental = {
                test_table = true,
              },
            })
          }
        })
      '';
    };
  };
  config.vim.keymaps = [
    {
      mode = ["n" "v" "t"];
      key = "<C-q>";
      action = "<CMD>q<CR>";
    }
    {
      mode = ["n"];
      key = "<leader>nt";
      action = "<CMD>lua require('neotest').run.run()<CR>";
      desc = "Run nearest test to cursor";
    }
    {
      mode = ["n"];
      key = "<leader>nf";
      action = "<CMD>lua require('neotest').run.run(vim.fn.expand('%'))<CR>";
      desc = "Run current test file";
    }
    {
      mode = ["n"];
      key = "<leader>nd";
      action = "<CMD>lua require('neotest').run.run({strategy = 'dap'})<CR>";
      desc = "Run debug test";
    }
  ];
}
