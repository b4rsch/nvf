{pkgs, ...}: {
  config.vim.extraPlugins = with pkgs.vimPlugins; {
    undotree = {
      package = undotree;
    };
  };
  config.vim = {
    keymaps = [
      {
        mode = ["n"];
        key = "<leader>u";
        action = "<CMD>UndotreeToggle<CR>";
      }
    ];
  };
}
