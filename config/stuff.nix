{ pkgs, ... }: {
  plugins.comment.enable = true;
  plugins.gitsigns.enable = true;
  plugins.gitblame = {
    enable = true;
    ignoredFiletypes = [
      "lspinfo"
      "checkhealth"
      "help"
      "man"
      "gitcommit"
      "TelescopePrompt"
      "TelescopeResults"
      "''"
      "startify"
      "toggleterm"
    ];
  };
  plugins.indent-blankline = {
    enable = true;
    settings = {
      exclude.filetypes = [
        "lspinfo"
        "checkhealth"
        "help"
        "man"
        "gitcommit"
        "TelescopePrompt"
        "TelescopeResults"
        "''"
        "startify"
        "toggleterm"
      ];
    };
  };
  plugins.treesitter = {
    enable = true;
    indent = true;
    ensureInstalled = [ "php" "css" "html" "typescript" "nix" ];
  };
  plugins.which-key.enable = true;
  extraPlugins = with pkgs.vimPlugins; [ vim-sleuth ];
}
