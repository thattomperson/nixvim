{ pkgs, ... }:
{
  colorschemes.catppuccin.enable = true;
  plugins.barbecue.enable = false;
  extraPlugins = [ pkgs.vimPlugins.dropbar-nvim ];
  plugins = {
    web-devicons.enable = true;
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
  
    settings = {
      cmdline.enabled = true;
      lsp.progress.enabled = false;
    };
  };
  plugins.fidget.enable = true;
}
