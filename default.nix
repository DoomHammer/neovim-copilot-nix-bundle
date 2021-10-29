{ pkgs ? import (
  builtins.fetchTarball {
    url = "https://github.com/nixos/nixpkgs/archive/24076c551dc1ed3e5f329c737b39e7bccdabb04b.tar.gz";
    sha256 = "1nnw2rhm4qhxl7fab9pbgrjbqh8m5bkpdm56dcpx43n53dni1jpl";
  }
) {} }:

with pkgs;

let
  nodejs = nodejs-12_x;
  neovim = pkgs.neovim-unwrapped.overrideAttrs (oldAttrs: rec {
    name = "neovim-0.6.0-pre";
    src = pkgs.fetchFromGitHub {
      owner  = "neovim";
      repo   = "neovim";
      rev    = "1dbbaf89bf5d3bcd1edac3af9938c2e2dd18f816";
      sha256 = "1ryy9yk0g5kpwx5mxca1ilch28ldh3m79z6lyzlhvzxks6qcn2zn";
    };
  });
in
mkShell {
  buildInputs = [
    nodejs
    neovim
  ];
  shellHook = ''
    export XDG_CONFIG_HOME=$PWD/.config
    git clone https://github.com/github/copilot.vim.git \
      $PWD/.config/nvim/pack/github/start/copilot.vim
  '';
}
