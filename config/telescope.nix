{ pkgs, ... }: {
  # Telescope:
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native = {
        enable = true;
        settings = {
          caseMode = "smart_case";
          fuzzy = true;
        };
      };
    };
    settings = {
      defaults = {
        vimgrep_arguments = [
          "${pkgs.ripgrep}/bin/rg"
          "--color=never"
          "--no-heading"
          "--with-filename"
          "--line-number"
          "--column"
          "--smart-case"
        ];
      };
    };
    keymaps = {
      "<leader>fg" = {
        action = "git_files";
        options.desc = "Telescope Git Files";
      };
      "<leader>ff" = {
        action = "find_files";
        options.desc = "Telescope Find Files";
      };
      "<leader>/" = {
        action = "live_grep";
        options.desc = "Telescope Live Grep";
      };
      "<leader><space>" = {
        action = "buffers";
        options.desc = "Telescope Buffers";
      };
    };
  };
}
