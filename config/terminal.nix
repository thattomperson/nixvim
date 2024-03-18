{ pkgs, ... }: {
  plugins.toggleterm.enable = true;

  extraConfigLua = ''
    local Terminal  = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({
      cmd = "${pkgs.lazygit}/bin/lazygit",
      hidden = true,
      direction = "float",

      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end
  '';

  userCommands = {
    Lazygit = {
      command = "lua _lazygit_toggle()<CR>";
      desc = "Open Lazygit in a floating terminal";
    };
  };

  keymaps = [
    {
      action = "<cmd>Lazygit<CR>";
      key = "<leader>g";
      mode = "n";
      options = { desc = "Open Lazygit in a floating terminal"; };
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
