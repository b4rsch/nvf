{
  config.vim = {
    statusline.lualine = {
      enable = true;
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
