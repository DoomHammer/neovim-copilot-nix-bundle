# vim-copilot-nix

This is a quick and dirty bundle that helps anybody with a UNIX system (Linux,
FreeBSD, macOS, Windows Subsystem For Linux) to access GitHub Copilot in Neovim.

If you love (Neo)Vim and want to try out the GitHub Copilot goodness, this is
probably the quickest way to get a taste of it.

Just clone this repository and follow the instructions.

# Prerequisites

This bundle requires a working [Nix](https://nixos.org/guides/install-nix.html)
installation.

To make things smoother, [direnv](https://direnv.net/) is also recommended, but
not required.

# Installation

If you have `direnv` installed, just `cd` to a directory containing this file
and run `direnv allow`.

Don't worry if you don't have `direnv`, in that case you'll have to run
`nix-shell default.nix`

It will take some time the first time you do it as Neovim will have to build on
your machine. Each subsequent time should be blazingly fast.

# Usage

Once you're in a Nix shell (either by using `direnv` or `nix-shell`) just type
`nvim` to open the 0.6.0-pre version of Neovim with Copilot installed. Run
`:Copilot setup` to authenticate with GitHub and then start hacking on your
projects.

Have an amazing flight!
