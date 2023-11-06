{
  number = true;
  #globals.mapleader = " ";
  relativenumber = true;
  colorschemes.catppuccin.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      options = {
        silent = true;
        desc = "Open Neo-Tree";
      };
    }
    {
      mode = "n";
      key = "<leader><space>";
      action = "<cmd>Telescope buffers<CR>";
      options = {
        silent = true;
        desc = "Find open buffers";
      };
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options = {
        silent = true;
        desc = "Find Files";
      };
    }
  ];
}
