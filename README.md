# dotfiles

My personal configuration files

## Installation
In the root of this repo, run `./install-profile` to set up the dotfiles and run the install scripts for a particular profile,
or `./install-standalone` to install particular configurations. See
[this](https://github.com/anishathalye/dotbot/wiki/Tips-and-Tricks) page in the
wiki for Dotbot to learn more.

To install the vim plugins, first open vim, then run `:PlugInstall`. To clean unused plugs, run `:PlugClean`

## Modifying files
Modify dotfiles in your text editor of choice, then save, commit, and push

To update the Brewfile of all taps, brews, and casks, run `holdmybeer`. Then commit and push.

Modify install.conf.yaml to change the behavior of dotbot (see [configuration](https://github.com/anishathalye/dotbot#Configuration))
- Note: Indent using 4 spaces (YAML is whitespace-sensitive)

## Upgrading Dotbot
In the root of this repo, run `git submodule update --remote dotbot`, then commit before running `./install`
You can also run `p10k configure` if you want to change the configuration.
