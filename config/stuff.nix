{ pkgs, ... }: {
  plugins.comment-nvim.enable = true;
  plugins.gitsigns.enable = true;
  plugins.neo-tree = {
    enable = true;
    window.position = "float";
  };
  plugins.startify.enable = true;
  plugins.treesitter = {
    enable = true;
    ensureInstalled = "all";
  };
  plugins.which-key.enable = true;
  plugins.project-nvim = {
    enable = true;
    showHidden = true;
    patterns = [ ".git" ];
  };
  extraPlugins = with pkgs.vimPlugins; [ vim-sleuth ];
}
