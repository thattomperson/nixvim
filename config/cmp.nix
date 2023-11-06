{
  plugins.nvim-cmp = {
    enable = true;
    extraOptions = { completion = { completeopt = "menu,menuone"; }; };
    mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<Tab>" = {
        action = ''
          function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expandable() then
              luasnip.expand()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif check_backspace() then
              fallback()
            else
              fallback()
            end
          end
        '';
        modes = [ "i" "s" ];
      };
    };
  };
  plugins.cmp-nvim-lsp = { enable = true; };
  plugins.cmp-buffer = { enable = true; };
  plugins.cmp_luasnip = { enable = true; };
}
