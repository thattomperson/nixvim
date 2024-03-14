{
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Oil --float<CR>";
      options = {
        silent = true;
        desc = "Open FileTree";
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
    {
      mode = "t";
      key = "<ESC><ESC>";
      action = ''
        function()
          require('toggleterm.ui').stopinsert()
        end
      '';
      lua = true;
    }
    {
      mode = [ "t" "n" ];
      key = "<c-`>";
      action = "<cmd>ToggleTerm<CR>";
      options = { desc = "Open terminal"; };
    }
  ];
}
