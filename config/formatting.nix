{ pkgs, ... }: {
  plugins.conform-nvim = {
    enable = true;
    formatters = {
      codespell.command = "${pkgs.codespell}/bin/codespell";
      nixfmt.command = "${pkgs.nixfmt}/bin/nixfmt";
      phpcbf.command = "${pkgs.php82Packages.phpcbf}/bin/phpcbf";
      eslint_d.command = "${pkgs.nodePackages.eslint_d}/bin/eslint_d";
    };
    formattersByFt = {
      php = [ "phpcbf" ];
      nix = [ "nixfmt" ];
      "*" = [ "codespell" ];
    };
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
  };

  autoGroups = { Linting = { clear = true; }; };

  autoCmd = [{
    event = [ "BufWritePost" "InsertLeave" ];
    callback = { __raw = "function () require('lint').try_lint() end"; };
    group = "Linting";
  }];

  extraConfigLua = ''
    require('lint').linters_by_ft = {
      php = { "phpcs", "codespell", },
      json = { "jsonlint", "codespell", },
      javascript = { "eslint_d", "codespell", },
      javascriptreact = { "eslint_d", "codespell", },
      typescript = { "eslint_d", "codespell", },
      typescriptreact = { "eslint_d", "codespell", },
    }
    require('lint').linters.phpcs.cmd = '${pkgs.php82Packages.phpcs}/bin/phpcs'
    require('lint').linters.codespell.cmd = '${pkgs.codespell}/bin/codespell'
    require('lint').linters.eslint_d.cmd = '${pkgs.nodePackages.eslint_d}/bin/eslint_d'
    require('lint').linters.jsonlint.cmd = '${pkgs.nodePackages.jsonlint}/bin/jsonlint'
  '';

  extraPlugins = with pkgs.vimPlugins; [ nvim-lint ];
}
