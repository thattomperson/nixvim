check:
	nix --extra-experimental-features nix-command --extra-experimental-features flakes flake check .

fmt:
	nix --extra-experimental-features nix-command --extra-experimental-features flakes run nixpkgs#nixfmt *.nix config/*.nix
