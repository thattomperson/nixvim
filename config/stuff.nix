{ pkgs, ... }: {
  plugins.bufferline.enable = true;
  plugins.lspkind.enable = true;
  plugins.lspsaga.enable = true;
  plugins.lsp = {
    enable = true;
    servers.phpactor.enable = true;
  };
  plugins.gitsigns.enable = true;
  plugins.neo-tree = {
    enable = true;
    window.position = "float";
  };
  plugins.telescope.enable = true;
  plugins.startify.enable = true;
  plugins.toggleterm.enable = true;
  plugins.treesitter = {
    enable = true;
    ensureInstalled = "all";
  };
  plugins.which-key.enable = true;
  plugins.noice.enable = true;
  plugins.project-nvim = {
    enable = true;
    showHidden = true;
    patterns = [ ".git" ];
  };
  #extraPlugins = with pkgs.vimPlugins; [ vim-sleuth ];
}
