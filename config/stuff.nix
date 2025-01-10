{ pkgs, ... }:
{
  plugins.comment.enable = true;
  plugins.gitsigns.enable = true;
  plugins.gitblame = {
    enable = true;
    settings = {
      ignored_filetypes = [
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
    settings = {
      auto_install = true;
      ensure_installed = [
        "php"
        "phpdoc"
        "comment"
        "css"
        "scss"
        "sql"
        "html"
        "typescript"
        "nix"
        "markdown"
        "xml"
      ];
      indent.enable = true;
    };
    folding = true;
  };
  plugins.treesitter-context = {
    enable = true;
    settings = {
      line_numbers = true;
      max_lines = 0;
      min_window_height = 0;
      mode = "topline";
      multiline_threshold = 20;
      separator = "-";
      trim_scope = "inner";
      zindex = 20;
    };
  };
  plugins.treesitter-refactor = {
    enable = true;
    highlightCurrentScope.enable = true;
    highlightDefinitions.enable = true;
    smartRename.enable = true;
  };
  plugins.which-key.enable = true;
  extraPlugins = with pkgs.vimPlugins; [ vim-sleuth ];
}
