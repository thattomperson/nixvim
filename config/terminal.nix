{
  plugins.toggleterm.enable = true;

  extraConfigLua = ''
    local Terminal  = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

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

  keymaps = [{
    action = "<cmd>Lazygit<CR>";
    key = "<leader>g";
    mode = "n";
    options = { desc = "Open Lazygit in a floating terminal"; };
  }];
}
