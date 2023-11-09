{ pkgs, ... }: {
  plugins.efmls-configs = {
    enable = true;
    setup.all.linter = "codespell";
    setup.php.linter = "phpcs";
    setup.typescript.linter = "eslint_d";
  };
  plugins.conform-nvim = {
    enable = true;
    formatters = {
      nixfmt = {
        command =
          builtins.concatStringsSep "/" [ pkgs.nixfmt.outPath "bin" "nixfmt" ];
      };
      phpcbf = {
        command = builtins.concatStringsSep "/" [
          pkgs.php82Packages.phpcbf.outPath
          "bin"
          "phpcbf"
        ];
      };
      eslint_d = {
        command = builtins.concatStringsSep "/" [
          pkgs.nodePackages.eslint_d
          "bin"
          "eslint_d"
        ];
      };
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
}
