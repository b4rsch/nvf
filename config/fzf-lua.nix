{
  config.vim = {
    fzf-lua = {
      enable = true;
      profile = "fzf-native";
    };
    keymaps = [
      {
        mode = ["n" "v"];
        key = "<leader>ff";
        action = "<CMD>FzfLua find<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>/";
        action = "<CMD>FzfLua live_grep<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>,";
        action = "<CMD>FzfLua buffers<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>gc";
        action = "<CMD>FzfLua git_commits<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>gs";
        action = "<CMD>FzfLua git_status<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>s\"";
        action = "<CMD>FzfLua registers<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>sd";
        action = "<CMD>FzfLua diagnostics_document<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>sD";
        action = "<CMD>FzfLua diagnostics_workspace<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>sh";
        action = "<CMD>FzfLua help_tags<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>sk";
        action = "<CMD>FzfLua keymaps<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>fb";
        action = "<CMD>FzfLua buffers<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>ff";
        action = "<CMD>FzfLua files<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>fw";
        action = "<CMD>FzfLua grep_cword<CR>";
      }
      {
        mode = ["n" "v"];
        key = "<leader>f@";
        action = "<CMD>FzfLua grep_cWORD<CR>";
      }
    ];
  };
}
