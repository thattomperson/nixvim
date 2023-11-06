check:
	git add -A
	nix --extra-experimental-features nix-command --extra-experimental-features flakes flake check .

fmt:
	git add -A
	nix --extra-experimental-features nix-command --extra-experimental-features flakes run nixpkgs#nixfmt *.nix config/*.nix

run:
	git add -A
	nix --extra-experimental-features nix-command --extra-experimental-features flakes run .
