{
  # Telescope:
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native = {
        enable = true;
        caseMode = "smart_case";
        fuzzy = true;
      };
    };
    keymaps = {
      "<leader>fg" = {
        action = "git_files";
        desc = "Telescope Git Files";
      };
      "<leader>ff" = {
        action = "find_files";
        desc = "Telescope Find Files";
      };
      "<leader>/" = {
        action = "live_grep";
        desc = "Telescope Live Grep";
      };
      "<leader><space>" = {
        action = "buffers";
        desc = "Telescope Buffers";
      };
    };
  };
}
