{lib, ...}: let
  inherit (lib.generators) mkLuaInline;
in {
  config.vim = {
    filetree = {
      nvimTree = {
        enable = true;
        openOnSetup = false;
        setupOpts = {
          auto_reload_on_write = true;
          git.ignore = true;
          renderer = {
            highlight_opened_files = "name";
          };
          view = {
            float = {
              enable = true;
              open_win_config = {
                border = "rounded";
                col = mkLuaInline "(vim.api.nvim_list_uis()[1].width - 30) * .5";
                row = mkLuaInline "(vim.api.nvim_list_uis()[1].height - 50) * .5";
                relative = "editor";
                width = 30;
              };
            };
          };
        };
      };
    };
    keymaps = [
      {
        mode = ["n" "v"];
        key = "<leader>pv";
        action = "<CMD>NvimTreeToggle<CR>";
      }
    ];
  };
}
