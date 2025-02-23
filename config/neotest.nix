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
}
