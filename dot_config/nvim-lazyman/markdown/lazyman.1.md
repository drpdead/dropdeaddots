---
title: LAZYMAN
section: 1
header: User Manual
footer: lazyman 2.1.8
date: March 13, 2023
---

# LAZYMAN

## NAME

lazyman - install, initialize, manage, and explore multiple Neovim configurations

## SYNOPSIS

lazyman [-4] [-9] [-A] [-a] [-B] [-b branch] [-c] [-d] [-E config] [-e] [-f path] [-F menu] [-g] [-i group] [-j] [-k] [-l] [-m] [-M] [-s] [-S] [-v] [-n] [-o] [-O name] [-p] [-P] [-q] [-Q] [-h] [-H] [-I] [-J] [-L lang] [-rR] [-C url] [-D subdir] [-N nvimdir] [-G] [-tT] [-U] [-V url] [-w conf] [-W] [-x conf] [-X] [-y] [-Y] [-z] [-Z] [-K conf] [-u] [health] [info] [init] [install [bob]] [open] [remove] [search] [status] [usage]

Visit the [Lazyman website](https://lazyman.dev) for more info.

## FEATURES

- `lazyman` command to easily install, initialize, manage, and explore multiple Neovim configurations
- support for `Lazy`, `Packer`, and `vim-plug` plugin managers (`dein` for `SpaceVim` only)
- open, install, remove, get info, search plugins, all from the command line or main menu
- automated installation of dependencies, tools, language servers, and Neovim 0.9+
- install and manage the `Bob` neovim version manager via a menu interface
- richly configured `nvim-Lazyman` Neovim configuration
- interactive menu interface for ease of management
  - manage the `nvim-Lazyman`, `nvim-LazyIde`, and `nvim-Webdev` configs via menus
  - perform health checks and generate a status report via menus
- over 100 supported Neovim configurations out of the box, additional custom configs
- vimdoc help for `Lazyman` with `:h Lazyman` or `,hl`
- convenience shell functions and aliases with fuzzy search and selection
  - `nvims` and `neovides` shell functions to fuzzy search, select, and open Neovim configs
  - enhanced `less` command alias
  - enhanced `ls` command alias
  - `tree` alias to display a tree view of files and folders
  - `tldrf` alias to fuzzy search, select, and preview cheat sheets

See the [Lazyman website Features section](https://lazyman.dev/features) for
additional information on Lazyman features.

## DESCRIPTION

The `lazyman` command can be used to install, initialize, and manage
multiple Neovim configurations. Neovim configurations are installed
and initialized in separate subdirectories of `~/.config/` with
associated separate subdirectories in `~/.local/share/`,
`~/.local/state/`, and `~/.cache/`.

Note that a full installation and initialization of all supported
Neovim configurations, plugins, language servers, formatters, linters,
and tools will consume over 20GB of disk space.

The `lazyman` Neovim configuration is installed as `~/.config/nvim-Lazyman`
and the `lazyman` command is installed as `~/.local/bin/lazyman`.

The Neovim configuration used by the `nvim` command is determined by
the `NVIM_APPNAME` environment variable (Neovim 0.9 and later only).
Set the `NVIM_APPNAME` environment variable in the shell initialization
file (typically `~/.bashrc` or `~/.zshrc`) by using the `export`
shell builtin:

```bash
export NVIM_APPNAME="<nvimdir>"
```

where `<nvimdir>` is the subdirectory in `~/.config/` that holds the
desired Neovim configuration. For example, to use the `LazyVim` Neovim
configuration in `~/.config/nvim-LazyVim/` the export command would be:

```bash
export NVIM_APPNAME="nvim-LazyVim"
```

In addition to exporting NVIM_APPNAME in your shell initialization file, you
may wish to create aliases to execute with the various Neovim configurations
you have installed. For example, aliases could be created to use Neovim
configurations installed in `~/.config/nvim-LazyVim` and `~/.config/nvim-LunarVim`
as follows:

```bash
alias nvim-lazy="NVIM_APPNAME=nvim-LazyVim nvim"
alias nvim-lunar="NVIM_APPNAME=nvim-LunarVim nvim"
```

After sourcing these aliases in your shell, to invoke Neovim with the LazyVim
configuration run `nvim-lazy filename.py` and to invoke Neovim with the LunarVim
config run `nvim-lunar proposal.md`.

The `lazyman` installation and configuration automatically configures
convenience aliases and shell functions for Lazyman installed Neovim
configurations. It also creates an `nvims` shell function which dynamically
creates a fuzzy searchable menu of installed Neovim configurations and launches
Neovim with the selected Lazyman Neovim configuration.

See `~/.config/nvim-Lazyman/.lazymanrc`.

Similarly, a `neovides` shell function can be used to select a Neovim
configuration for use with the Neovim GUI `neovide`.

Both the `nvims` shell function and `neovides` shell function accept
command line arguments. The `-R` flag indicates removal of the selected
Neovim configuration. The `-C filter` option to `nvims` and `neovides`
specifies a filter string to match when generating the list of Neovim
configurations to search and select. The `-I` flag indicates display
the selected configuration information document. Additional command
line arguments are described below.

The fuzzy searchable/selectable menu of Neovim configurations can also
be shown with the command `lazyman -S`. Note also that both the `nvims`
shell function and the `lazyman -S` command can accept additional filename arguments
which are then passed to Neovim. For example, to edit `/tmp/foo.lua` with
a Neovim configuration selected from the `nvims` menu:

```bash
nvims /tmp/foo.lua
```

Execute `nvims` directly at the shell prompt or by using the convenience
key binding `ctrl-n`.

Similarly, if `neovide` is found in the execution PATH then a fuzzy
selectable menu is provided with the `neovides` shell function and convenience
key binding of `ctrl-N` to bring up that menu.

The `.lazymanrc` file also creates aliases for `ls`, `less`, and others
including a `tldrf` alias that allows fuzzy searching and selecting from
the list of cheatsheets supported by `tldr`. Try out the `tldrf` command
to quickly and easily display documentation for thousands of commands.

Another alternative to setting `NVIM_APPNAME` in the environment or with an
alias is to use the `lazyman` command to specify which Neovim configuration
to use with this invocation. This is done using the `-E config` option to
`lazyman`. When invoking `lazyman` with the `-E config` argument, the Neovim
configuration can be specified by setting `config` to one of `astronvim`,
`ecovim`, `kickstart`, `lazyman`, `lazyvim`, `lunarvim`, `nvchad`, `spacevim`,
or any Neovim configuration directory in `~/.config`. For example, to edit
the file `foo.lua` using the LazyVim Neovim configuration:

```bash
lazyman -E lazyvim foo.lua
```

When invoked with the `-E config` option, `lazyman` sets the `NVIM_APPNAME`
environment variable to the specified `config` and executes `nvim` with
all following arguments. This is a pretty easy way to explore all the
`lazyman` installed and initialized Neovim configurations.

### Supported plugin managers

Lazyman currently supports the following Neovim plugin managers:

- [Lazy](https://github.com/folke/lazy.nvim) (lazy.nvim)
- [Packer](https://github.com/wbthomason/packer.nvim) (packer.nvim)
- [Plug](https://github.com/junegunn/vim-plug) (vim-plug)

The SpaceVim bundled plugin manager is also supported.

Neovim configurations using other plugin managers will likely fail to cleanly
install and initialize using `lazyman`. Support for additional plugin managers
is not currently planned but if you have a need for this feature open an issue.

To install and initialize a Neovim configuration that uses the **Packer** plugin
manager invoke `lazyman` with the `-P` flag.

To install and initialize a Neovim configuration that uses the **Plug** plugin
manager invoke `lazyman` with the `-p` flag.

### Lazyman menu system

The `lazyman` command, when invoked without arguments or with the `-F menu`
argument, presents an interactive menu. The Lazyman menu system can be used
to perform almost all of the functions available from the command line.
Submenus are available to configure the Lazyman Neovim configuration as well
as the `Webdev` and `LazyIde` Neovim configurations.

Use the Lazyman menu system to select and install/open/remove Neovim configurations
managed by Lazyman. Enter a menu option number or keywords to select an option.

Keywords include: help, info, install, open, remove, search, update, quit

All shortcuts have single key support:

```
  'h' = help, 'I' = info, 'i' = install, 'o' = open, 'q' = quit
  'r' = remove, 's' = search, 'u' = update, 'c' = Lazyman Config menu
```

In the fuzzy selection dialogs, enter a few letters to fuzzy select from the options
or use the `<Up-Arrow>` and `<Down-Arrow>` keys to move through the options.
Press `<Enter>` to select the highlighted option.

Lazyman Neovim configurations are organized into categories. Configurations can be
individually installed/removed or all configurations in a category can be acted on.

The main menu also provides options to install additional tools, enable debug mode,
install the `Bob` Neovim version manager, select the Neovim version to use, toggle
the user interface between `Neovim` and `Neovide`, perform a Neovim health check,
bring up the Lazyman Neovim Configuration menu, or generate a status report.
In addition, an option exists to view the Lazyman manual.

The Lazyman Neovim configuration manager can also be used from the command line.

## OPTIONS

The following command line options are available with the `lazyman` command:

`-4` : indicates initialize as AstroNvim v4 (use in place of `-J`)

`-9` : indicates do not apply any patches to this configuration

`-A` : indicates install all supported Neovim configurations

`-a` : indicates install and initialize the the 'AstroNvimPlus' Neovim configuration

`-B` : indicates install and initialize all 'Base' Neovim configurations

`-b branch` : specifies an nvim-lazyman git branch to checkout

`-c` : indicates install and initialize the 'NvChad' Neovim configuration

`-d` : indicates debug mode

`-D subdir` : specifies the subdirectory of the repository given with `-C url` to retrieve

`-e` : indicates install and initialize the 'Ecovim' Neovim configuration

`-E 'config'` : execute 'nvim' with 'config' Neovim configuration where 'config' can be one of 'lazyman', 'astronvim', 'ecovim', 'kickstart', 'lazyvim', 'lunarvim', 'magicvim', 'spacevim', or any Neovim configuration directory in '~/.config'. For example, 'lazyman -E lazyvim foo.lua' would edit 'foo.lua' with the LazyVim config

`-f 'path'` : fix treesitter 'help' parser in config file 'path'

`-F 'menu'` : indicates present the specified Lazyman menu where 'menu' can be one of 'main', 'conf', 'lsp', 'format', 'plugin', 'lazyide', or 'webdev'

`-G` : indicates no plugin manager, initialize with `:TSUpdate`

`-g` : indicates install and initialize the 'Abstract' Neovim configuration

`-h` : indicates use Homebrew rather than the native package manager (Pacman always used on Arch Linux, Homebrew on macOS)

`-H` : indicates compile and install the nightly Neovim build

`-j` : indicates install and initialize the 'BasicIde' Neovim configuration

`-k` : indicates install and initialize the 'Kickstart' Neovim configuration

`-K conf` : indicates install and initialize the unsupported in-development configuration 'conf'

`-l` : indicates install and initialize the 'LazyVim' Neovim configuration

`-m` : indicates install and initialize 'MagicVim' Neovim configuration

`-M` : indicates install and initialize 'Mini' Neovim configuration

`-s` : indicates install and initialize the 'SpaceVim' Neovim configuration

`-S` : indicates show Neovim configuration fuzzy selector menu

`-t` : indicates list all installed Lazyman Neovim configurations

`-T` : indicates list all uninstalled Lazyman Neovim configurations

`-v` : indicates install and initialize the 'LunarVim' Neovim configuration

`-i group` : specifies a group to install/remove/update. 'group' can be one of: astronvim kickstart lazyvim lunarvim nvchad packer plug

`-I` : indicates install all language servers and tools for coding diagnostics

`-J` : indicates install indicated repo as an AstroNvim v3 custom configuration

`-L lang` : indicates install the `lang` Language configuration where 'lang' can be one of: All AlanVim Allaman CatNvim Cpp Go Go2one Insis Knvim LaTeX LazyIde LunarIde LvimIde Magidc Nv NV-IDE Orange Python Rust SaleVim Shuvro Webdev

`-n` : indicates dry run, don't actually do anything, just printf's

`-o` : indicates input required during initialization

`-O name` : indicates set Lazyman configuration to namespace 'name' where 'name' can be one of `ecovim`, `free`, or `onno

`-P` : indicates use Packer rather than Lazy to initialize

`-p` : indicates use Plug rather than Lazy to initialize

`-q` : indicates quiet install

`-Q` : indicates exit after performing specified action(s)

`-r` : indicates remove the previously installed configuration

`-R` : indicates remove previously installed configuration and backups

`-C url` : specifies a URL to a Neovim configuration git repository

`-N nvimdir` : specifies the folder name to use for the config given by -C

`-U` : indicates update an existing configuration

`-V url` : specifies an NvChad user configuration git repository

`-w conf` : indicates install and initialize Personal 'conf' configuration. 'conf' can be one of: All Adib Artur Beethoven Brain Charles Craftzdog Dillon Elianiva Elijah Enrique Kristijan Heiker J4de Josean JustinNvim Kodo LamarVim Lukas LvimAdib Maddison Metis Mini ONNO OnMyWay Optixal Orhun Primeagen Rafi RNvim Roiz Simple Slydragonn Spider Traap Wuelner xero Xiao

`-W` : indicates install and initialize all 'Personal' Neovim configurations

`-x conf` : indicates install and initialize nvim-starter 'conf' configuration. 'conf' can be one of: All 2k AstroNvimStart Barebones Basic CodeArt Cosmic Ember Fennel HardHacker JustinOhMy Kabin Kickstart Micah Normal NvPak Modern pde Rohit Scratch SingleFile BasicLsp BasicMason Extralight LspCmp Minimal StartBase Opinion StartLsp StartMason Modular

`-X` : indicates install and initialize all 'Starter' Neovim configurations

`-y` : indicates do not prompt, answer 'yes' to any prompt

`-Y` : indicates use the following arguments as 'name'/'value' to set Lazyman config. For example: `lazyman -Y theme kanagawa`. If the 'name' argument is 'get' then the current value is returned

`-z` : indicates do not run nvim after initialization

`-Z` : indicates do not install Homebrew, Neovim, or any other tools during initialization

`-u` : displays this usage message and exits

`health` : generate and display a health check for a configuration

`info` : open an information page for a configuration in the default browser

`init` : initialize specified Neovim configuration and exit

`install` : fuzzy search and select configuration to install

`install bob` : install the Bob Neovim version manager

`open` : fuzzy search and select configuration to open

`remove` : fuzzy search and select configuration to remove

`search` : fuzzy search and select configurations for a plugin

`status` : displays a brief status report and exits

`usage` : displays a usage message and exits

Commands act on `NVIM_APPNAME`, override with '-N nvimdir' or '-A'

Without arguments lazyman installs and initializes nvim-Lazyman
or, if initialized presents an interactive menu system.

See the [Lazyman website Usage section](https://lazyman.dev/usage) for
additional information on Lazyman usage.

### EXAMPLES

`$HOME/.config/nvim-Lazyman/lazyman.sh` : initializes the `Lazyman` Neovim configuration in `$HOME/.config/nvim-Lazyman/`

`lazyman` : presents an interactive menu interface

`lazyman install` : fuzzy search and select a configuration to install and initialize

`lazyman open` : fuzzy search and select an initialized configuration to open

`lazyman -a` : installs and initializes the `AstroNvimPlus` Neovim configuration in `$HOME/.config/nvim-AstroNvimPlus/`

`lazyman -c` : installs and initializes the `NvChad` Neovim configuration in `$HOME/.config/nvim-NvChad/`

`lazyman -l` : installs and initializes the `LazyVim` Neovim configuration in `$HOME/.config/nvim-LazyVim/`

`lazyman -A` : installs and initializes all supported Neovim configurations

`lazyman -I` : installs language servers and tools for coding diagnostics

`lazyman -U -N nvim-LazyVim` : updates the `LazyVim` Neovim configuration in `$HOME/.config/nvim-LazyVim/`

`lazyman -A -U` : updates all installed supported Neovim configurations

`lazyman -P -C https://github.com/Abstract-IDE/Abstract -N nvim-Abstract` : installs and initializes the Packer based 'Abstract' Neovim configuration in `~/.config/nvim-Abstract`

`lazyman -R -N nvim-LazyVim` : removes the `LazyVim` Neovim configuration in `$HOME/.config/nvim-LazyVim/`, its data files, cache, state, and all backups

Sometimes people place their Neovim configuration in a repository subdirectory
along with other configurations in a `dotfiles` repo. To retrieve only the
Neovim configuration subdirectory in such a repository, use the `-b branch`
and `-D subdir` arguments to `lazyman` along with `-C url` and `-N nvimdir`.
If no `-b branch` is provided then the default git branch is assumed to be
`master`. For example, to install and initialize the Neovim configuration
hosted at <https://github.com/alanRizzo/dot-files> in the subdirectory `nvim`
with default branch `main`, place it in `~/.config/nvim-AlanVim`, and
initialize it with Packer:

```bash
lazyman -b main -C https://github.com/alanRizzo/dot-files -D nvim -N nvim-AlanVim -P
```

## CONFIGURATION

In addition to the `lazyman` command, the Lazyman distribution includes
a richly preconfigured Neovim configuration in `~/.config/nvim-Lazyman`.
The Lazyman Neovim configuration includes a top-level configuration file,
`~/.config/nvim-Lazyman/lua/configuration.lua`. This file can be use to enable,
disable, and configure `nvim-Lazyman` components. For example, here is where you
would configure whether `neo-tree` or `nvim-tree` is enabled as a file explorer.
Or, disable the `tabline`, disable the `statusline`, set the `colorscheme`,
`theme`, and theme style. The `configuration.lua` file is intended to serve as a
quick and easy way to re-configure the `nvim-Lazyman` Neovim configuration but you
can still dig down into the `options.lua`, `keymaps.lua`, `autocmds.lua` and more.

### Configuration sections

The `lua/configuration.lua` configuration file contains the following sections
with settings briefly described here:

#### Namespace selection

The `Lazyman` Neovim configuration contains three separate and distinct
configurations. The setting `conf.namespace` in `lua/configuration.lua`
controls which configuration is active. The supported values for
`conf.namespace` are `ecovim`, `free`, and `onno`. The `free` namespace is the
same configuration used in previous releases of `Lazyman`. The `onno` namespace
is based on the `ONNO` configuration with modifications and enhancements to
integrate this config with `lazyman`. The `ecovim` namespace is based on the
`Ecovim` configuration with modifications and enhancements to integrate this
config with `lazyman` along with some useless eye candy.

To use the `ecovim` namespace, set:

```lua
conf.namespace = "ecovim"
```

To use the `free` namespace, set:

```lua
conf.namespace = "free"
```

To use the `onno` namespace, set:

```lua
conf.namespace = "onno"
```

This setting is configurable via the `lazyman` menu system, as are most
of the `Lazyman` configuration settings.

#### Theme configuration

The `nvim-Lazyman` Neovim configuration includes pre-configured support for several
themes including support for statusline and tabline theme coordination. The active
theme and colorscheme is selected in `configuration.lua` by setting `conf.theme`.
For themes that support different styles, the theme style is selected by setting
`conf.theme_style`. Theme transparency can be enabled with `conf.enable_transparent`.
For example, to use the `kanagawa` theme with `dragon` style and transparency
disabled, set:

```
conf.theme = "kanagawa"
conf.theme_style = "dragon"
conf.enable_transparent = false
```

##### Supported themes

- [catppuccin](https://github.com/catppuccin/nvim.git)
- [dracula](https://github.com/Mofiqul/dracula.nvim)
- [everforest](https://github.com/neanias/everforest-nvim.git)
- [kanagawa](https://github.com/rebelot/kanagawa.nvim.git)
- [nightfox](https://github.com/EdenEast/nightfox.nvim.git)
- [monokai-pro](https://github.com/loctvl842/monokai-pro.nvim)
- [onedarkpro](https://github.com/olimorris/onedarkpro.nvim.git)
- [tokyonight](https://github.com/folke/tokyonight.nvim.git)
- [tundra](https://github.com/sam4llis/nvim-tundra.git)

A configuration file for each theme is in `lua/themes/` and lualine theme
configuration for each theme and its styles in `lua/themes/lualine`.

Use `<F8>` to step through themes.

Available styles are:

- kanagawa
  - wave
  - dragon
  - lotus
- tokyonight
  - night
  - storm
  - day
  - moon
- onedarkpro
  - onedark
  - onelight
  - onedark_vivid
  - onedark_dark
- catppuccin
  - latte
  - frappe
  - macchiato
  - mocha
  - custom
- dracula
  - blood
  - magic
  - soft
  - default
- nightfox
  - carbonfox
  - dawnfox
  - dayfox
  - duskfox
  - nightfox
  - nordfox
  - terafox
- monokai-pro
  - classic
  - octagon
  - pro
  - machine
  - ristretto
  - spectrum

#### Plugin configuration

Several Neovim plugins in the `nvim-Lazyman` configuration can be optionally
installed or replaced by another plugin with similar functionality. The plugins
that are configurable in this way in `configuration.lua` are briefly described
below along with their default settings:

- Neovim session manager to use, either persistence or possession
  - `conf.session_manager = "possession"`
- Enable display of ascii art
  - `conf.enable_asciiart = false`
- Delete buffers and close files without closing your windows
  - `conf.enable_bbye = true`
- Enable display of custom cheatsheets
  - `conf.enable_cheatsheet = true`
- Enable coding plugins for diagnostics, debugging, and language sservers
  - `conf.enable_coding = true`
- Enable compile plugin to compile and run current file
  - `conf.enable_compile = false`
- If coding is enabled, enable Github Copilot
  - `conf.enable_copilot = false`
- If coding is enabled, enable Neoai, <https://github.com/Bryley/neoai.nvim>
  - `conf.enable_neoai = false`
- Enable dressing plugin for improved default vim.ui interfaces
  - `conf.enable_dressing = true`
- Enable easy motions, can be one of "hop", "leap", or "none"
  - `conf.enable_motion = "leap"`
- Enable note making using Markdown preview and Obsidian plugins
  - `conf.enable_notes = true`
- Enable renamer plugin for VS Code-like renaming UI
  - `conf.enable_renamer = true`
- Enable ranger in a floating window
  - `conf.enable_ranger_float = true`
- Enable multiple cursors
  - `conf.enable_multi_cursor = true`
- Neo-tree or nvim-tree, false will enable nvim-tree
  - `conf.enable_neotree = true`
- Replace the UI for messages, cmdline and the popup menu
  - `conf.enable_noice = true`
- Enable ChatGPT (set `OPENAI_API_KEY` environment variable)
  - `conf.enable_chatgpt = false`
- Enable the wilder plugin
  - `conf.enable_wilder = false`
- The statusline (lualine) and tabline can each be enabled or disabled
  - `conf.enable_statusline = true`
  - `conf.enable_tabline = true`
- The winbar with navic location can be one of barbecue, standard, or none
  - `conf.enable_winbar = "standard"`
- Enable the rebelot/terminal.nvim terminal plugin
  - `conf.enable_terminal = true`
- Enable playing games inside Neovim!
  - `conf.enable_games = true`
- Enable the Alpha dashboard
  - `conf.dashboard = "alpha"`
- Enable the Neovim bookmarks plugin (<https://github.com/ldelossa/nvim-ide>)
  - `conf.enable_bookmarks = false`
- Enable the Neovim IDE plugin (<https://github.com/ldelossa/nvim-ide>)
  - `conf.enable_ide = false`
- Enable Navigator
  - `conf.enable_navigator = true`
- Enable Project manager
  - `conf.enable_project = true`
- Enable smooth scrolling with the `neoscroll` plugin
  - `conf.enable_smooth_scrolling = true`
- Enable window picker
  - `conf.enable_picker = true`
- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
  - `conf.show_diagnostics = "icons"`
- Enable semantic highlighting
  - `conf.enable_semantic_highlighting = true`
- Convert semantic highlights to treesitter highlights
  - `conf.convert_semantic_highlighting = true`

Additional plugin configuration and options are available in `configuration.lua`.

#### Lazyman Neovim Terminal

If `configuration.lua` has the Neovim Terminal enabled with
`conf.enable_terminal = true` then the `Lazyman` Neovim configuration
includes Neovim Terminal management via
[terminal.nvim](https://github.com/rebelot/terminal.nvim). This Neovim terminal
is preconfigured for execution of the `lazyman` command. A shortcut key
binding to execute `lazyman` in a Neovim terminal has also been provided:
(`<leader>lm`). While in Neovim with the default `nvim-Lazyman` configuration,
pressing `,lm` will execute the `lazyman` command in a Neovim floating terminal
window. Alternately, executing the Neovim command `:Lazyman` will also
bring up the `lazyman` command in a Neovim terminal.

The Lazyman Neovim configuration includes an autocmd to automatically
enter insert mode when opening the Neovim Terminal. This allows
immediate input to the `lazyman` prompt. While in the Neovim Terminal
the normal Neovim mode, motion, and command key bindings are in effect.
For example, to leave insert mode press `<ESC>`, to re-enter insert
mode press `i` or `a`.

If [Asciiville](https://github.com/doctorfree/Asciiville) is installed,
pressing `,A` or executing the `:Asciiville` Neovim command will execute
the `asciiville` command in a Neovim floating terminal window.

If the `htop` command is available, `:Htop` will execute the `htop` system
monitor in a floating Neovim terminal window.

This preconfigured Neovim terminal capability is only available in the
`Lazyman` Neovim configuration and not in the other configs.

### Help

The Lazyman Neovim configuration provides `vimdoc` help for the `lazyman`
command, the `nvim-Lazyman` Neovim configuration, the `nvims` shell function,
and the configured keymaps.

While in Neovim using the `nvim-Lazyman` configuration, view the `vimdoc`
help for the `lazyman` command and configuration with the command
`:help Lazyman`, view `vimdoc` help for `nvims` with
`:help Nvims`, and the `vimdoc` help for the configured keymaps
with the command `:help Lazyman-Keymaps`. Shortcut key bindings
for these help commands have been configured. Use `,hl`, `,hn`, and `,hk`
to quickly access the `vimdoc` help for `lazyman`, `nvims`, and Lazyman keymaps.

## AUTHORS

Written by Ronald Record `github@ronrecord.com`

## LICENSING

LAZYMAN is distributed under an Open Source license.
See the file LICENSE in the LAZYMAN source distribution
for information on terms &amp; conditions for accessing and
otherwise using LAZYMAN and for a DISCLAIMER OF ALL WARRANTIES.

## BUGS

Submit bug reports online at:

<https://github.com/doctorfree/nvim-lazyman/issues>

## SEE ALSO

**nvims**(1), **lazyman-keymaps**(5)

Full documentation and sources at:

<https://github.com/doctorfree/nvim-lazyman>
