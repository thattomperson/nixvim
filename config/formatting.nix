{ pkgs, ... }: {
  plugins.conform-nvim = {
    enable = true;
    formatters = {
      nixfmt = {
        command =
          builtins.concatStringsSep "/" [ pkgs.nixfmt.outPath "bin" "nixfmt" ];
      };
      codespell = {
        command = builtins.concatStringsSep "/" [
          pkgs.codespell.outPath
          "bin"
          "codespell"
        ];
      };
      phpcbf = {
        command = builtins.concatStringsSep "/" [
          pkgs.php82Packages.phpcbf.outPath
          "bin"
          "phpcbf"
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
