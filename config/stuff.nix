{ pkgs, ... }: {
  plugins.bufferline.enable = true;
  plugins.lspkind.enable = true;
  plugins.lspsaga.enable = true;
  plugins.lsp = {
    enable = true;
    servers.phpactor.enable = true;
    servers.nil_ls.enable = true;
    servers.tsserver.enable = true;
    servers.cssls.enable = true;

    keymaps = {
      lspBuf = {
        "K" = "hover";
        "<C-k>" = "signature_help";
        "gr" = "references";
        "gD" = "declaration";
        "gd" = "definition";
        "gi" = "implementation";
        "gt" = "type_definition";
        "<leader>ca" = "code_action";
        "<leader>re" = "rename";
        "<leader>f" = "format";
      };
    };
  };
  plugins.gitsigns.enable = true;
  plugins.neo-tree = {
    enable = true;
    window.position = "float";
  };
  plugins.startify.enable = true;
  plugins.toggleterm.enable = true;
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
