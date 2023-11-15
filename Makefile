NIX=nix --extra-experimental-features 'nix-command flakes repl-flake'

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


repl:
	$(NIX) repl nixpkgs .

