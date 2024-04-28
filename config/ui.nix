{ pkgs, ... }:
{
  colorschemes.catppuccin.enable = true;
  plugins.barbecue.enable = false;
  extraPlugins = [ pkgs.vimPlugins.dropbar-nvim ];
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
