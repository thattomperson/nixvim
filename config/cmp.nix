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
                      elseif require("luasnip").expand_or_jumpable() then
                        vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
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
  plugins.luasnip = { enable = true; };
}
