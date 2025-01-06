# NVsoulfire

## What is it? 
This is my custom Neovim configuration I am currently building.
Originally this repo was mainly intended to be a public backup for myself but you can feel free to use it.
If you want an IDE like experience writing your own config can be very time consuming. If you are new to neovim please just use a popular nvim distro.

## Features
TODO add a picture of nvim config and a bullet list w/ full features
- Completion
- Cool themes
- Cool plugins

## Requirements
TODO add a list of additional programs plugins need like ripgrep and nerdfonts.

## Installation
If you don;t know how to install a custom config the steps are the following:
  1. get the latest version of Neovim in order to make sure all packages work
  2. make a configuration folder

```sh
mkdir -p ~/.config/nvim
```
  if you already have this folder backup your old config files first

```sh
mv ~/.config/nvim ~/.config/nvim.bak
```

  3. put all of the files from this git repository in the nvim folder.

```sh
git clone https://github.com/beastr45/NVsoulfire ~/.config/nvim
```

  4. load up neovim and then wait for plugins to install and load automatically

```sh
nvim
```

>Often I find myself cloning without properly specifying the destination. If nothing happens make sure that the init.lua file is in the root of the nvim directory and not somewhere else.

## Soulfire Basics & Configuration
TODO right now soulfire is decently simple. I will add documentation for additional configuration here if needed.
