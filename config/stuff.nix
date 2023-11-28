{ pkgs, ... }: {
  plugins.comment-nvim.enable = true;
  plugins.gitsigns.enable = true;
  plugins.gitblame.enable = true;
  plugins.indent-blankline = {
    enable = true;
    exclude.filetypes = [
      "lspinfo"
      "packer"
      "checkhealth"
      "help"
      "man"
      "gitcommit"
      "TelescopePrompt"
      "TelescopeResults"
      "''"
      "startify"
    ];
  };
  plugins.neo-tree = {
    enable = true;
    filesystem.filteredItems.visible = true;
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
  extraPlugins = with pkgs.vimPlugins; [ vim-sleuth vim-dadbod-ui ];
}
