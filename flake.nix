

{
  description = "A nixvim configuration";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    nixvim,
    flake-utils,
    ...
  } @ inputs:
    flake-utils.lib.eachDefaultSystem (system: let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs {inherit system;};
      nixvim' = nixvim.legacyPackages.${system};
      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = {
          config = {
	    options = {
	      number = true;
	      relativenumber = true;
	    };
	    keymaps = [
	      {
                mode = "n";
                key = "<leader>e";
                action = "<cmd>Neotree toggle<CR>";
                options = {
                 silent = true;
	      	desc = "Open Neo-Tree";
	      };
            }
	    {
	      mode = "n";
	      key = "<leader><space>";
	      action = "<cmd>Telescope buffers<CR>";
	      options = {
	        silent = true;
	        desc = "Find open buffers";
	      };
	    }
	    {
 	      mode = "n";
	      key = "<leader>ff";
	      action = "<cmd>Telescope find_files<CR>";
	      options = {
	        silent = true;
	        desc = "Find Files";
	      };
	    }
	  ];
	  globals.mapleader = " ";
          plugins.bufferline.enable = true;
	  colorschemes.catppuccin.enable = true;
	  plugins.nvim-cmp.enable = true;
	  plugins.cmp-nvim-lsp.enable = true;
	  plugins.lspkind.enable = true;
	  plugins.lspsaga.enable = true;
	  plugins.lsp = {
	    enable = true;
	    servers.phpactor.enable = true;
	  };
	  plugins.gitsigns.enable = true;
	  plugins.neo-tree = {
	    enable = true;
	    window.position = "float";
	  };
	  plugins.telescope.enable = true;
	  plugins.startify.enable = true;
	  plugins.toggleterm.enable = true;
	  plugins.treesitter = {
	    enable = true;
	    ensureInstalled = "all";
	  };
	  plugins.which-key.enable = true;
	  plugins.noice.enable = true;
	  plugins.project-nvim = {
	    enable = true;
	    showHidden = true;
	    patterns = [ ".git" ];
	  };
	  extraPlugins = with pkgs.vimPlugins; [
            vim-sleuth
          ];
	};
	};
      };
    in {
      checks = {
        # Run `nix flake check .` to verify that your config is not broken
        default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "A nixvim configuration";
        };
      };

      packages = {
      	phpactor = pkgs.phpactor;
        # Lets you run `nix run .` to start nixvim
        default = nvim;
      };
    });
}

