{ self, pkgs, ... }: {
  config = {
    options = {
      number = true;
      relativenumber = true;
    };
  };
  imports = [
    ./bufferline.nix
    ./stuff.nix
    ./completion.nix
    ./keymaps.nix
    ./theme.nix
    ./telescope.nix
  ];
}
