{
  colorschemes.catppuccin.enable = true;
  plugins.barbecue.enable = true;
  plugins.noice = {
    enable = true;
    cmdline.enabled = true;
  };
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    sections = {
      lualine_a = [ "mode" ];
      lualine_b = [
        "branch"
        {
          name = "diff";
          extraConfig = {
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };
          };
        }
      ];
      lualine_c = [
        "filetype"
        {
          name = {
            __raw = ''
              function()
                local msg = "No Active Lsp"
                local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
                local clients = vim.lsp.get_active_clients()
                if next(clients) == nil then
                  return msg
                end
                for _, client in ipairs(clients) do
                  local filetypes = client.config.filetypes
                  if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                    return client.name
                  end
                end
                return msg
              end'';
          };
        }
      ];
      lualine_x = [
        {
          name = {
            __raw = ''
              function() return require("noice").api.status.command.get() end'';
          };
        }
        {
          name = {
            __raw =
              ''function() return require("noice").api.status.mode.get() end'';
          };
        }

      ];
      lualine_z = [
        "hostname"
        {
          icon = "";
          name = "os.date('%R')";
        }
      ];
    };
    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };
  };
}
