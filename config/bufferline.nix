{
  plugins.bufferline = { enable = true; };
  plugins.lualine = {
    enable = true;
    sections.lualine_c = [ "filename" "lsp_progress" ];
  };
}
