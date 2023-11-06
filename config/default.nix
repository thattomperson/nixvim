{ self, pkgs, ... }: {
  config = {
    options = {
      number = true;
      relativenumber = true;
      cursorline = true;
      expandtab = true;
      formatoptions = "jcroqlnt";
      grepformat = "%f:%l:%c:%m";
      grepprg = "rg --vimgrep";
      ignorecase = true;
      inccommand = "nosplit";
      laststatus = 0;
      list = true;
      mouse = "a";
      pumblend = 10;
      pumheight = 10;
      scrolloff = 4;
      sessionoptions = [ "buffers" "curdir" "tabpages" "winsize" ];
      shiftround = true;
      shiftwidth = 2;
      showmode = false;
      sidescrolloff = 8;
      signcolumn = "yes";
      smartcase = true;
      smartindent = true;
      spelllang = [ "en" ];
      splitbelow = true;
      splitright = true;
      tabstop = 2;
      termguicolors = true;
      timeoutlen = 300;
      undofile = true;
      undolevels = 10000;
      updatetime = 200;
      wildmode = "longest:full,full";
      winminwidth = 5;
      wrap = false;

    };
  };
  imports = [
    ./bufferline.nix
    ./stuff.nix
    ./completion.nix
    ./keymaps.nix
    ./theme.nix
    ./telescope.nix
    ./autocmds.nix
  ];
}
