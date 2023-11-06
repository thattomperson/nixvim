NIX=nix --extra-experimental-features nix-command --extra-experimental-features flakes

check:
	git add -A
	$(NIX) flake check .

fmt:
	git add -A
	$(NIX) run nixpkgs#nixfmt *.nix config/*.nix

run:
	git add -A
	$(NIX) run .

update:
	git add -A
	$(NIX) flake update --commit-lock-file


