{ self, pkgs, ... }: {
  options = {
    # Import all your configuration modules here
    imports = [ ./bufferline.nix ./options.nix ./cmp.nix ./stuff.nix ];
  };
}
