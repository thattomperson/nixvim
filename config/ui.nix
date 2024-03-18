{
  colorschemes.catppuccin.enable = true;
  plugins.barbecue.enable = true;
  plugins = {
    mini = {
      enable = true;
      modules = {
        files = { };
        statusline = { };
        starter = { };
      };
    };
  };
  plugins.noice = {
    enable = true;
    cmdline.enabled = true;
    lsp.progress.enabled = false;
  };
  plugins.fidget.enable = true;
}
