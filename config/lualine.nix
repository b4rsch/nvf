{
  config.vim = {
    statusline.lualine = {
      enable = true;
      theme = "catppuccin";

      activeSection.c = [
        ''
          {
          "filename",
          path = 1,
          }
        ''
      ];
    };
  };
}
