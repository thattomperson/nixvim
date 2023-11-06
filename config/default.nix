{ self, pkgs, ... }: {
  config = {
    options = {
      number = true;
      relativenumber = true;
    };
  };
  imports =
    [ ./bufferline.nix ./stuff.nix ./cmp.nix ./keymaps.nix ./theme.nix ];
}
