{
  # Completion
  plugins.nvim-cmp = {
    enable = true;
    snippet.expand = "luasnip";
    completion = {
      completeopt = "menu,menuone,noinsert,noselect";
    };
    sources = [
      { name = "nvim_lsp"; }
      { name = "luasnip"; }
      { name = "path"; }
      { name = "treesitter"; }
      { name = "calc"; }
      { name = "dap"; }
      { name = "buffer"; }
      { name = "cmdline"; }
    ];
    preselect = "None"; # Don't preselect to avoid tabs completing things prematurely
    mappingPresets = [ "insert" ];
    mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<C-Space>" = "cmp.mapping.complete()";
    };
  };

  plugins.luasnip.enable = true;
  plugins.cmp_luasnip.enable = true;
  plugins.cmp-treesitter.enable = true;
  plugins.cmp-calc.enable = true;
  plugins.cmp-cmdline.enable = true;
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp-nvim-lsp-document-symbol.enable = true;
  plugins.cmp-nvim-lsp-signature-help.enable = true;
  plugins.cmp-dap.enable = true;
}
