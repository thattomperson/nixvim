{
  plugins.lsp = {
    enable = true;
    servers.phpactor.enable = true;
    servers.nil-ls.enable = true;
    servers.eslint.enable = true;
    servers.tsserver.enable = true;
    servers.cssls.enable = true;
    servers.html.enable = true;

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
}
