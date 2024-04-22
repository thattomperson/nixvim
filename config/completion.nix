{
  # Completion
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      #    snippet.expand = "luasnip";
      completion = { completeopt = "menu,menuone"; };
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "nvim_lua"; }
        { name = "path"; }
      ];

      snippet.expand = ''
        function(args)
          require('luasnip').lsp_expand(args.body)
        end
      '';
      #    preselect =
      #      "None"; # Don't preselect to avoid tabs completing things prematurely
      #    mappingPresets = [ "insert" ];
      preselect = "cmp.PreselectMode.None";
      mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<C-Space>" = "cmp.mapping.complete()";
        "<Down>" = "cmp.mapping.select_next_item()";
        "<Up>" = "cmp.mapping.select_prev_item()";
      };
    };
  };

  plugins.luasnip.enable = true;
  # plugins.cmp_luasnip.enable = true;
  # plugins.cmp-buffer.enable = true;
  # plugins.cmp-path.enable = true;
  # plugins.cmp-nvim-lua.enable = true;
  # plugins.cmp-nvim-lsp.enable = true;
  # plugins.cmp-nvim-lsp-document-symbol.enable = true;
  # plugins.cmp-nvim-lsp-signature-help.enable = true;
}
