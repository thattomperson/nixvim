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
        files = {
          windows = {
            preview = true;
            width_preview = 80;
          };
        };
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
