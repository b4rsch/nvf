{
  config.vim = {
    languages = {
      enableLSP = true;
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
      nix.enable = true;
      markdown.enable = true;

      bash.enable = true;
      css.enable = true;
      html.enable = true;
      sql.enable = true;
      ts.enable = true;
      go.enable = true;
      lua.enable = true;
      python.enable = true;
      rust = {
        enable = true;
        crates.enable = true;
      };
      tailwind.enable = true;
      svelte.enable = true;
    };
  };
}
