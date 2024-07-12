# Changelog

## Unreleased

### ⚡️ Added

- Add enable/disable AstroNvim Community plugins to `anvmv4_config.sh`
- Add `treesitter-context` to `AstroNvimV4` plugins menu
- Update `AstroNvimV4` info documents, remove `astrolsp.lua` from `lazyman` initialization
- Add note about upgrading `git` and `bash`
- Add auto format to `AstroNvimV4` formatters configuration menu
- Add arg processing for `AstroNvimV4` submenus from command line
- Add `cheatsheet` and smooth scrolling plugins config to `AstroNvimV4` config script

### 🐞 Fixed

- Remove `Daniel` LunarVim configuration from `Personals`
- Fix `shellcheck` errors in `anvmv4_config.sh`
- Remove `java_debug.sh` install script invocation from `lazyman.sh`
- Check for `java` in `java_debug.sh`
- Remove duplicate calls to setup in `neoscroll` config

## v3.1.6r1

### ⚡️ Added

- Customize `LSP` and `Formatters` menus in `AstroNvimV4` configure script
- Customize `Plugins` menu in `AstroNvimV4` configure script
- Add `LSP`, `Formatters`, and `Plugins` menus to `AstroNvimV4` configuration menu script
- Extend `scripts/get_conf.lua` so it works with any `NVIM_APPNAME` not just `Lazyman`
- Add configuration menu script for `AstroNvimV4` and add it to `Lazyman` menus

### 🐞 Fixed

- Fix setup and loading of `monokai-pro` colorscheme
- Update `AstroNvimV4` info documents
- Don't automatically enable `gopls`

## v3.1.5r4

### ⚡️ Added

- Install `stylua` in `install_neovim.sh`
- Add `concat_tables` function, check both lsp tables in `lspconfig`
- Install `taplo` with `mason-lspconfig`
- Use `pip` to install `pynvim`
- Use GNU sed on `macOS`
- Use Homebrew to install `Bob` if available

### 🐞 Fixed

- Use temporary `astrolsp.lua` for `AstroNvimV4` initialization
- Move `jsonls` out of installed lsp servers, move `vimls` in
- Fix update categories, was installing all instead of updating installed

## v3.1.5r3

### ⚡️ Added

- Add `AstroNvimV4` to `starters` in `configrc`
- Use `pipx` on `macOS`

### 🐞 Fixed

- Initialize `AstroNvimV4` twice
- Remove tmp uninstall script after executing
- Reflect renamed `schemastore` repo `b0o/SchemaStore.nvim` in `lspconfig`
- Remove `Neorg` from `free` namespace
- Update `obsidian` plugin configuration

## v3.1.5r2

### ⚡️ Added

- Add `-4` argument to `lazyman` to indicate use `AstroNvim` v4 during initialization
- Add `AstroNvimV4` to `Starter` configurations as example `AstroNvim` v4 configuration

### 🐞 Fixed

## v3.1.5r1

### ⚡️ Added

### 🐞 Fixed

- Pin all `AstroNvim` configuration initializations to `v3.45.3` for now

## v3.1.4r3

### ⚡️ Added

- Install `kitten` in Kitty install script

### 🐞 Fixed

- Remove Allaman patch
- Remove Allaman custom config on removal of Allaman
- Create custom Allaman config if none exists
- Install `gpatch` with `brew` if Homebrew is being used
- No need to install `pip` with `pipx`
- Update `ufo` configuration replacing deprecated `close_fold_kinds`
- Do not enable `gopls` on macOS

## v3.1.4r2

### ⚡️ Added

- Add a couple of configs to check out in TODO
- Add `reportUnusedExpression = "none"` to `pyright` setup

### 🐞 Fixed

- Remove `JustinLvim`, no longer maintained
- Fix Neovide asset download

## v3.1.4r1

### ⚡️ Added

- Support for Ubuntu 23.04 and greater using `pipx` for Python module installation

### 🐞 Fixed

## v3.1.3r5

### ⚡️ Added

- Convenience script `lman` to invoke Neovim with the Lazyman configuration
- Install `pyright`, remove `misspell` tmp files
- Add argument to `install_neovim.sh` to disable `ulimit` call for use in container builds
- Source `nvm.sh` after running `install_neovim.sh`

### 🐞 Fixed

- Ignore empty lines in `.nvimdirs`, toggle `pylsp` and `pyright`
- Remove `nvim-ts-context-commentstring`, use `mini.comment` exclusively

## v3.1.3r3

- Bug fix release

### ⚡️ Added

### 🐞 Fixed

- Install g++ as a Neovim dependency
- Add `$HOME/.local/bin` to PATH when first installing Neovim in `lazyman.sh`

## v3.1.3r2

### ⚡️ Added

- Use `fzf` and `lsd` to provide a preview in `nvims` shell function
- Install latest `lsd` release, check architecture for deb release downloads
- Add note about Kasm registry and Neovim Kasm workspace
- Add `wing` to `treesitter` installed parsers
- Add note about rate limiting, add `GITHUB_TOKEN` as env var for Github API requests
- Use Github API token for Github API requests if one exists
- Add notice to be patient when installing Neovim dependencies
- Add `noinstall` argument to `lazyman` and `-s` to `install_neovim.sh` to specify no native installation package installs
- Add support for `nvim-treesitter-context`
- Add support for `SeniorMars` personal config
- Disable LSP timeout by default, not yet ready for primetime
- Add support for LSP timeout plugin

### 🐞 Fixed

- Add patch for `SeniorMars` config
- Check for nil rhs in lsp keymaps
- Add newline if brief usage exits
- Fix install neovide script with new download filenames
- Disable LSP timeout by default
- Pin `indent-blankline` to version 2.20.8

## v3.1.3r1

### ⚡️ Added

- Split installed LSP servers out into separate config
- Update servers and formatters configured in LSP menu
- Merge `ecovim` `nvim-tree` config into `config/nvim-tree.lua`
- Update `nivm-tree` opts
- Remove duplicate diagnostics keymaps, add diagnostic keymap descriptions

### 🐞 Fixed

- Set `mason-lspconfig` auto install to false
- Fix `get_conf_table` in `lazyman_config.sh` with split LSP servers tables

## v3.1.2r7

### ⚡️ Added

- Add `KickstartPython` to `Starters`
- Add `Jdhao` config to `Personals`
- Install `vim` language server, `python` LSP server, and `jedi` python library
- Use custom attach for some LSP servers
- Configure `pylsp`
- Set preference in `null-ls` for `pylsp`
- Add `python` settings
- Add support for database plugins configurable via menu
- Add `dadbod` keymaps

### 🐞 Fixed

- Enable database plugins by default
- Change `galaxyline` stats icon to `ribbon`
- Improve `dadbod` configuration

## v3.1.2r6

### ⚡️ Added

- Add info documents for `Vimacs`
- Add `-o` argument to indicate input required during initialization
- Add unsupported `Vimacs` personal configuration
- Add Telescope theme switcher plugin and menu configuration support to enable/disable
- Add support for `MusicPlayerPlus` commands in terminal

### 🐞 Fixed

- Use `mpplus -c` for `MusicPlayerPlus` command to force use of current terminal
- Resolve keymap conflict between `Cheatsheet` and toggle color column
- Increase `which-key` column max height

## v3.1.2r5

### ⚡️ Added

- Add conditional config for `tabnine` to `nvim-cmp`
- Add `which-key` mappings for todo comments
- Add patch for `Allaman` config
- Add `ranger` and `renamer` plugins to `ecovim` namespace, manage in menu
- Add `telescope` keymaps from `free` namespace to `ecovim` namespace

### 🐞 Fixed

- Improve `nvim-cmp` configuration
- Fix `telescope` find files keymap
- Update `cheatsheet` with `lazygit` keymaps
- Merge `nvim-cmp` config from `ecovim` into `config/nvim-cmp.lua`
- Move all `cmp-npm` config up to `config/cmp-npm.lua`
- `lua/ecovim/internal/cursorword.lua` no longer used, include for reference only

## v3.1.2r4

### ⚡️ Added

- Install `nvm`, latest `node`, latest `npm` during initialization
- Migrate any previously installed global `node` packages
- Check for `n` node version manager and issue warning

### 🐞 Fixed

- Merge `lspconfig` into `lua/config/lspconfig.lua`
- Always use `on_attach` from `lua/util.lua`
- Only test for terminal type on Linux, fails on macOS

## v3.1.2r3

### ⚡️ Added

- Add support for `conform.nvim` as replacement for `null-ls`
- Enable `gopls` if `go` is in path
- Add note about `gcc`, `node`, and `npm` requirements
- Set install prefix to /usr if no homebrew found
- Create `HOME/.local/bin` if necessary
- Disable `conform.nvim` by default
- Start conditionally configuring `config/conform.lua`
- Move linter functions into `utils/linter.lua`

### 🐞 Fixed

- Fix unneeded break in case statement
- Remove test checkout
- Only check for terminal type on Linux, hangs on macOS
- Remove `selene`

## v3.1.2r2

### ⚡️ Added

- Add `configuration.lua` entry `typescript_server`: `tsserver` `tools` or `none`
- Add LSP menu support in `ecovim` namespace for typescript server selection

### 🐞 Fixed

- Reorder language server setup
- Disable `eslint` by default

## v3.1.2r1

### ⚡️ Added

- Promote `ecovim` namespace to default after improving install and configuration
- Add menu configuration of `mini.animate`, `duck.nvim`, and `flirt`
- Re-enable formatters menu for `ecovim`

### 🐞 Fixed

- Remove `shade` plugin from `ecovim` namespace
- Remove `null-ls` and formatters from `ecovim` namespace
- Revert to previous config for `tailwindcss`
- Move `.luarc.json` up from `ecovim` subdir
- Fix `keymaps.sh` description table heading
- Rework `ecovim` namespace lspconfig setup
- Configure Mason in `ecovim` when coding is disabled

## v3.1.1r3

### ⚡️ Added

- Add `RNvim` to Personal configs
- Add `RNvim` info docs
- Remove `CandyVim` from Personal configs

### 🐞 Fixed

- Remove `multicursor` support from all Lazyman configuration namespaces
- Update `Lazyman` info doc

## v3.1.1r2

### ⚡️ Added

- Add Noice name to `which-key` in `ecovim` namespace
- Add `flash.nvim` keymap to Enable Flash
- Add `flash.nvim` to Motion plugin selections for all namespaces
- Add `flash.nvim` keymaps
- Add diagnostic keymaps to `which-key`, define toggle_diagnostics function

### 🐞 Fixed

- Move `ecovim` color schemes keymap to UI group
- Flash motion/search only in `ecovim` and `free`, removed from `onno`
- Check if namespace already set before changing it

## v3.1.1r1

### ⚡️ Added

- Install all lsp servers, formatters and linters enabled in `configuration.lua` in `ecovim` namespace
- Install all lsp servers, formatters and linters enabled in `configuration.lua` in `onno` namespace
- Set default namespace to `ecovim`
- Add `flake8` to external formatters
- Use `config/null-ls.lua` to configure `ecovim` namespace `null-ls`
- Enable `-O namespace` in initialization
- Use `mason-null-ls` in `ecovim` namespace
- Add Mason specs in `ecovim`
- Set default namespace to `ecovim`
- Enable all formatters and linters by default
- Set lsp globals in `lua/config/lsp/functions.lua`
- Set handlers for all lsp servers once rather than in each server setting
- Merge `ecovim` and free lsp configurations
- Config menu support for noice and toggleterm in `ecovim`
- Add `ecovim` telescope extensions
- Move `ecovim/lsp` up to `config/lsp`
- Rework `ecovim` namespace lsp configuration
- Expose formatters and lsp servers menus to `ecovim` namespace
- Automate enabling terminal for zen mode if supported terminal is detected during initialization
- Sync `multicursor` configuration across namespaces
- Add `hydra.nvim` configuration

### 🐞 Fixed

- Update Lazyman info docs using new `ecovim` namespace
- Track down hang in lsp config initialization
- Check if keys nil before referencing in `util.lua`
- Disable not yet configured formatters
- Fix `null-ls` `flake8` configuration
- Fix `ecovim` namespace lsp configuration, still need to add use of configuration.lua
- Fix telescope extensions in `ecovim` namespace

## v3.1.0r3

### ⚡️ Added

- Add `indentline` plugins to `ecovim` namespace, manage in `lazyman_config.sh`
- Add `WakaTime` to `ecovim` and `lazyman_config.sh` for `ecovim`
- Better navigation between config menus
- Add Smooth Scrolling to all namespace config menus
- Add `hop` and `leap` to `onno` and `ecovim`
- Enable all namespaces configuration of motion and scrolling via menu

### 🐞 Fixed

- Pull `autocmds`, `keymappings`, `options` in `ecovim` namespace up a level
- Rename `ecovim` namespace `keymappings` to `keymaps`
- Resolve `indentline` duplicates and config in `ecovim` namespace
- Merge `ecovim` icons with toplevel icons
- Move `free/utils` up to `utils`
- Resize nvim tree with + and -
- Update Lazyman info docs
- Resolve some keymap conflicts in `ecovim` namespace
- Add `version = false` and `missing = true` to `lazy.nvim` config
- Update Lazyman info docs using new `ecovim` namespace
- Improve info doc and `keymaps` generation, regenerate info docs
- Remove unused info docs
- Use `<code>` blocks rather than ticks, replace pipe symbol with `&#124;`
- Regenerate all info docs using markdown code for `lhs` and `rhs` of `keymaps`
- Enclose left and right hand sides of `keymaps` as code in info docs

## v3.1.0r2

### ⚡️ Added

- Add `Lazyplug` terminal command and `,lp` keymap to open Lazyman plugins menu
- Add `OpenRepo` keymap to `cheatsheet`
- Add `which-key` menu names
- Add keymaps from `free` namespace for toggles, help, lazyman to `ecovim` namespace
- Add `Lazyplug` terminal command and `,lp` keymap to open Lazyman plugins menu
- Use standard `galaxyline` in `ecovim` namespace
- Add `barbecue` to `ecovim` namespace, require terminal in `ecovim` alpha
- Set default winbar style to `barbecue`
- Switch default namespace from `free` to `ecovim`
- Add smooth scrolling to `ecovim` namespace
- Add `dressing` and `noice` to managed plugins in `ecovim` namespace
- When switching namespace also set winbar and lualine style

### 🐞 Fixed

- Rename `candy` namespace to `ecovim`
- Change references in `ecovim` namespace from `CandyVim` to `Ecovim`
- Disable `ecovim` namespace winbar config if `barbecue` is enabled
- No need for 'set nomore' in initialization
- Set `timeoutlen` to 300 in `ecovim` namespace
- Modify `dirname` highlight in `barbecue`
- Add printfs when removing all configurations and Lazyman
- Remove some sections from README and refer to website
- Set clipboard to `unnamed` in all namespaces
- Disable `ecovim` namespace winbar config if `enable_winbar` is 'none'
- Do not lazy load Alpha dashboard if enabled
- Override background of panels in `kanagawa` depending on transparency

## v3.1.0r1

### ⚡️ Added

- Add new namespace, `candy`, based on `Ecovim`
- Enable `alpha` dashboard header by default
- Add autocmds to `alpha` configuration
- Add support for new namespace to `lazyman.sh`
- Use `HackAuto` on dashboard
- Copy `free` namespace Alpha configuration, adopt for `candy` namespace
- Set highlight groups in each theme if it is enabled
- Only show formatters and lsp servers configuration menus for `free` namespace
- Add support for multiple colorschemes
- Add zen mode terminal support to config menu
- Add `cheatsheet` to `candy` namespace
- Disable plugins config menu options not supported in candy
- Enable/disable Games in `candy` namespace with configuration.lua
- Dashboard menu entry for both namespaces is 'Alpha Header'
- Enable/disable Alpha header in `candy` namespace via config menu
- Add autocmds for termopen to enter insert mode and resize
- Add `nvim_terminal` and `Lazyman` commands to `candy` namespace
- Enable/disable AI plugins in `candy` namespace with configuration.lua
- Add support for `tabnine` in Lazyman configuration menu
- Add `candy` to Namespace menu option
- Use some options settings from `configuration.lua` in `candy` namespace
- Add new websites to What's New
- Update README, man page, and info docs with new namespace

### 🐞 Fixed

- Move some alpha headers to unused
- Move alpha headers up to lua/config, use headers in `candy` namespace
- Format websites table
- Align dashboard search recents
- Move recents up to top section of dashboard
- Do not compile kanagawa theme

## v3.0.2r3

### ⚡️ Added

- Add `Ahsan` and `Chokerman` personal configurations
- Add custom configs to total count
- Add `list_names` argument to `get_conf.lua`
- Add `CandyVim` to Personals
- Add `lemonade` to extra tools installed
- Add `bash` to treesitter `ensure_installed`
- Add capability to generate health checks for all installed configs
- Move health checks to `info/health/`
- Add `c` to treesitter parsers
- Add `Dillon` to `Neotree` dashboard
- Add links to website in man pages and README
- `Bob` management scripts improvements
- Add `Craftzdog Lexplore` to `.lazymanrc`

### 🐞 Fixed

- Check if updated before updating parsers in treesitter config
- Disable unavailable `Go` formatters
- `gopls` disabled by default, enable `gopls` on Linux
- Update `CandyVim` info docs
- Fix horizontal rules in `healthcheck.sh`
- Remove `Lamia` config from `Starters`
- Realign Base Configs table
- Remove `PenguinVim`, no longer maintained
- Cleanup commented out `TSInstall`, unused

## v3.0.2r2

### ⚡️ Added

- Install `lua-language-server` in `install_neovim.sh`
- Add treesitter dependency to cellular automota plugin
- Add dashboard dependency on terminal

### 🐞 Fixed

- Minimal set of parsers for `ensure_installed`, auto install treesitter parsers
- Redo `nvim-treesitter` configuration
- Update `Maddison` patch
- Remove problematic parsers from `ensure_installed`
- Redirect config removal output during Lazyman removal
- Remove `autotag` treesitter plugin

## v3.0.2r1

### ⚡️ Added

- Add `c` to `treesitter` parsers
- Add script to uninstall `bob` neovim version manager
- Add script to update `bob` neovim version manager
- Add all Mason commands to spec
- List `treesitter` commands in `lazy.nvim` spec

### 🐞 Fixed

- Remove all configs and lazyman command when removing Lazyman
- Update with rustup before installing Bob
- Disable `treesitter` highlights for `c` and `rust`
- Fix new `treesitter` issues with highlights for some parsers, will it ever end?
- Reverting all v4 subdir changes, cannot use in Neovim nightly
- Remove `bash`, `cpp`, `java`, `python` from `treesitter` ensure installed
- Disable `markdownlint` by default

## v3.0.1r4

### ⚡️ Added

- Add section on menu system usage, add note about disk space
- Add single key menu navigation shortcuts for configuration menus
- Add `I`, `r`, and `u` main menu shortcuts for info, remove, and update
- Use `lazyman.dev` info document if it exists, add 's' main menu shortcut
- Add `q` menu shortcut, `i` and `o` main menu shortcuts
- Add `LamarVim` to Personals table, use `lazyman.dev/info/` links

### 🐞 Fixed

- Fix nvim-tree view.mappings config
- Fix table headings for Github Pages conversion

## v3.0.1r3

### ⚡️ Added

- Add note about Bash version on macOS
- Initial support for arm architecture in `install_neovim.sh`
- Add `scripts/check_patches.sh` to check patches
- Add `-9` argument to `lazyman` to clone but not patch
- Add `LamarVim` config
- Link to new `lazyman.dev` websites

### 🐞 Fixed

- Remove no longer needed patches, redo `LaTeX` patch
- Regenerate info docs, update `JustinNvim` patch
- Regenerate info docs for `Dillon`
- Add `Dillon` to Packer configs, fix `Dillon` info entry
- Revise screenshot dimensions
- Remove `lazyman.dev` website files, they are now in a separate repository

## v3.0.1r2

### ⚡️ Added

- Format `git status` and config listings
- Initial Jekyll `_config.yml` for Github Pages
- Add `Barebones` config to `Starters`
- Add table of Neoman managed projects

### 🐞 Fixed

- Update Jekyll theme config
- Move `debug/neovim version/ui toggle` to bottom of lazyman menu
- Check if uninstalled array is empty before selection to install
- Change `Lazyman Status` menu entry to `Status Report`
- Fix `LunarVim` config total

## v3.0.1r1

### ⚡️ Added

- Currently 99 configs supported
- Show count of custom installed configs in main menu heading
- Add `figlet` fonts to scripts folder
- Select from category menu entries, replace `Select/...` menu entries
- Combine update menu options into `Update Category` option
- Display number of installed configs in each category, simplify remove menu entries

### 🐞 Fixed

- Fix plugins menu setting of `lualine_style`
- Remove `3D` fonts, remove `Lean` font
- Adjust `alpha` dashboard highlights
- Fix plugins menu setting of `lualine_style`
- Simplify and clarify `vimdoc` help commands
- Adjust highlights in `alpha` dashboard

## v3.0.0r3

### ⚡️ Added

- Only install, do not update, configs that are not already installed

### 🐞 Fixed

- Comment out `flash` in `JustinNvim`, it is now the default
- Simplify categories install/update case statements

## v3.0.0r2

### ⚡️ Added

- Add Dotfyle badges to Lazyman README
- Add categories and `All` to install fuzzy selection menus
- Add `install bob` argument to `lazyman`
- Add `JustinOhMy` to `Starters`
- Add `Beethoven` to `Personals`
- Add `Lukas` to `Personals`
- Add `Primeagen` to `Personals`
- Add `What's New` section to README
- Add collapsed sections for plugins and language server support to README

### 🐞 Fixed

- Add patch for `Beethoven` config
- Move `JustinLvim` and `JustinNvim` to `Personals`
- Fold list of configuration descriptions in README
- Use blankline after summary tag throughout README to provide emphasis with markdown
- Remove `nvim-3rd` patch
- Combine setting list of uninstalled configs into a single function

## v3.0.0r1

### ⚡️ Added

- Create namespaces for `free` and `onno` with `namespace` entry to switch between them
- Add `Elijah` config to `Personals`
- Move `lualine` configuration up to common
- Remove `tabline.nvim` and replace `enable_tabline` with `enable_status_in_tab`
- Set `lualine` theme in `init.lua` rather than `highlights.lua` in `onno` lualine style
- Enable use of either `lualine` style in both namespaces
- Add keymaps for toggling `lualine/statusline/tabline/winbar`
- Use `vim.api` to retrieve options values in keymaps
- Add keymap to toggle mouse
- Add `nvim-cmp` to common configs
- Create lua/config with plugin configurations common to both namespaces
- Add `wilder`, `tabline`, `neoscroll`, and `indent-blankline` configs to `onno`
- Add `nvim-tree` to `onno` and configure file tree for `onno`
- Session manager configuration control in `onno` namespace
- Add cases to toggle switch in `lazyman_config.sh`
- Restructure `onno` namespace
- Make `onno` namespace obey theme setting
- Move themes up to `lua` for use in both namespaces
- Move map function up to `util.lua`
- Add wildcard to quit menu options
- Add `lualine_style` to `configuration.lua`
- Add support for two `lualine` styles
- Add toggle of configuration values from command line
- Add `-O` and `-Y` arguments to `lazyman` to get/set configuration values from the command line
- Add section on namespace configuration to readme and doc
- Add namespace configuration to `lazyman` config menu
- Further integration of `onno` namespace with `configuration.lua`
- Move functions and `ginit` config up to common
- Merge icons and some utils to `lua/icons.lua` and `lua/util.lua` for both namespaces
- Add `configuration.lua` enabling of AI and `nvim-cmp` from `free` namespace to `onno` namespace
- Add namespace to loading of `options`, `globals`, `autocmds`

### 🐞 Fixed

- Remove `check_python_version` from `lazyman`, `lzyide`, and `webdev` config scripts, not used
- Only show `wilder` menu option for `free` namespace
- Rewrite `get_conf.lua` and add retrieval of options/variables
- Always use `wilder` plugin in `onno` namespace
- Only show dashboard settings in plugins menu for `free` namespace
- Use common config for `possession.nvim`
- Redo `possession` config
- Only show dashboard settings in plugins menu for `free` namespace
- Use common config for `possession.nvim`
- Fix `alpha` dashboard `persistence` session restore
- Don't prompt for `sudo` privilege notice during install
- Fix `lualine` session component
- Fix `lualine` toggle keymaps
- Fix `onno` options
- Update `configuration.lua` listing in readme
- Cleanup autocmds and keymaps
- Fix references to old namespace

## v2.1.9r1

### ⚡️ Added

- Add `treesitter` support for `tsx` filetype
- Add `neotest-jest` to `neotest` configuration
- Add support for `neotest`
- Add `OnMyWay` patch
- Add `check_nvims.sh` script
- Add `Kristijan` config to `Personals`
- Add `Wuelner` config to `Personals`
- Add `Orange` config to `Languages`
- Add `Insis` config to `Languages`

### 🐞 Fixed

- Remove rainbow treesitter plugin
- Revise `mini.comment` configuration
- No `lazy sync` needed for `ONNO`, just `TSUpdate`
- Update usage message in `README`
- Fixes to `check_nvims.sh`

## v2.1.8r7

### ⚡️ Added

- Use new keymaps generation for keymaps man page
- Reference other man pages in `See Also` sections
- Expand `nvims/neovides` usage message

### 🐞 Fixed

- Set config lists if `configrc` not present so `lazyman.sh` can be used as standalone bootstrap
- Update man pages and vimdoc for `lazyman`, `lazyman-keymaps`, and `nvims`

## v2.1.8r6

### ⚡️ Added

- Add notes on `nvims` to readme intro
- Add `-I` option to `nvims` and `neovides` to display config info document
- Add `Cpp` config to `Languages`
- Add `overrides.lua` to enable overriding configuration options when using `nvims` or `neovides`
- Alias `vi` when using `nvims` to enable persistent use of selected config with `vi`
- Add YouTube urls to info docs

### 🐞 Fixed

- Remove `3rd` config
- Don't alias `nvim`
- Change 'lazyman info' to fuzzy select a config to view
- Fix lazymanrc file explore option
- Fix keymaps generation script with sed of error messages
- Regenerate info docs for all configs

## v2.1.8r5

### ⚡️ Added

- Add `Orhun` config to `Personals`
- Install `nvims` and `lazyman-keymaps` man pages in `~/.local/share/man/`

### 🐞 Fixed

- Read `nvimdirs` in `nvims` and `neovides` functions to pickup any newly installed
- Fix `AstroNvim` user installs when using a repository subdirectory
- Fix `Penguin` website url
- Change arguments to `nvims` and `neovides` shell functions to uppercase
- Fix refs to `nvims` and `neovides` in `lazyman`
- Update doc and man pages
- Use `getopts` in `.lazymanrc`

## v2.1.8r4

### ⚡️ Added

- Add `,hn` keymap shortcut for `Nvims` vimdoc help
- Add `-c filter` args to `nvims` and `neovides` functions to filter configs
- Add `nvims` man page describing usage of Lazyman functions and aliases
- Add workflow to generate `nvims` vimdoc from markdown
- Add setting of `vi` and `nvim` alias when `nvims` is used

### 🐞 Fixed

- Fix removal with `nvims` and `neovides` aliases
- Fix `nvims` and `neovides` function argument processing

## v2.1.8r3

### ⚡️ Added

- Add `Artur` config to `Personals`
- Add `-i` argument to `information.sh` to generate info docs in config's installed location
- Add `Kodo` config to `Personals`
- Add `keymaps.sh` script to retrieve keymaps from a configuration
- Update `obsidian` plugin config, add enable/disable `obsidian` plugin to config menu
- Update `neogit` plugin spec and config, add `diffview.nvim`
- Add section on open URL command
- Add note about `BROWSER` environment variable
- Override url open command in `lazymanrc`
- Use Python webbrowser module to open info documents

### 🐞 Fixed

- Improve url open function to workaround Firefox Snap issues
- Arrange shortcuts in main menu prompt heading
- Improve plugin search match listing
- Regenerate info docs including `Cosmic` after patch applied
- Update info docs with auto-generated keymaps section
- Update `neo-tree` plugin spec and config to `v3`

## v2.1.8r2

### ⚡️ Added

- Add plugin search to main menu and command line
- Add shortcuts list to main menu prompt
- Add link to table of info docs in every info doc
- Add description and install command to info documents
- Add `Dotfyle` entry for `Maddison` config
- Add `Maddison` config to `Personals`
- Add `info` to keywords in main menu help

### 🐞 Fixed

- `Go2one` uses `Packer`
- Fix `MagicVim` plugin manager setting, add `MagicVim` description
- Fix plugins retrieval for `AstroNvim` configs
- Add description to `CodeArt` entry in `README`
- Fix links in tables

## v2.1.8r1

### ⚡️ Added

- Add `xero` to `Personals`
- Add `NV-IDE` to `Languages`
- Generate configuration info documents
- Add `Config Info` to main menu and info argument to `lazyman`
- Add list of language servers installed, style dashboard screenshot
- Add `CatNvim` config to `Languages`
- Add to list of features

### 🐞 Fixed

- Move `nvim-2k` to `Starters`
- Fix hide and show list menu logic
- Add patches for `Nyoom` and `NV-IDE`
- Change all config links in `README` and `Release Notes` to info pages
- Info page generation improvements

## v2.1.7r4

### ⚡️ Added

- Add `Hide/Show List` to main menu
- Add `Justin` config to `Starters`
- Add `SingleFile` config to `Starters`
- Add install of `luacheck` to `install_neovim`
- Add `JustinLvim` and `Shuvro` `LunarVim` configs
- Add autocmd and keymap to open Github Repo url
- Add `LvimAdib` to `LunarVim` configs and `Personals`
- Add unsupported config install with `-K conf` command line option
- Add unsupported `Nyoom` config
- Add support for `Go2one` config
- Add section on external tools to `Known limitations`
- Add `Rohit` config to `Starters`
- Add `Neovide` install script, use `Neovide` release asset first then `cargo` build if necessary

### 🐞 Fixed

- Improve Github repo open autocmd
- Rename `Justin` to `JustinNvim`
- Move `Fennel` to `Starters`
- Apply patches in updates
- Limit display of installed configs in menu heading to 16
- Don't show `Install Tools` if already run
- Move `Nv` config to `Languages`
- Add `Luarocks` bin to `PATH` if it exists
- Update `.lazymanrc` source listing
- Improve `nvim` kill script to catch headless and `bob` invocations

## v2.1.7r3

### ⚡️ Added

- Add `LvimIde` config to languages
- Add `LunarVim` config group to menu system and command line options
- Add `LunarVim` `Daniel` config to personals
- Add `Enrique` config to personals
- Add `LunarIde`, a `LunarVim` based config IDE
- Install `flake8` in `install_neovim` script
- Add menu configuration of `toggleterm` to `LazyIde`

### 🐞 Fixed

- Move `LazyIde` from personal to language
- Fix test in `.lazymanrc` when invoked directly without a second argument
- Add printfs around java debug install
- Add patches for `Daniel`, `Enrique`, `LunarVim`, and `LvimIde`

## v2.1.7r2

### ⚡️ Added

- Add `LazyIde` to configs initialized with `MasonInstallAll`
- Add `copilot-cmp` to plugins
- Add `misspell` to installed tools
- Add support for `Codeium` in `nvim-Lazyman`
- Install `tectonic` and `trash-cli`
- Add support for `Metis` personal config
- Add support for configuring scrolling, `wakatime`, & alpha header in `webdev` config

### 🐞 Fixed

- Fix `navic` icons setting
- Remove duplicate `neodev` setup, use default `neodev` options
- Add support for configuring additional settings in `LazyIde` config
- Move several personal configs to language

## v2.1.7r1

### ⚡️ Added

- Integrate `LazyIde` configuration into `lazyman`
- Add `LazyIde` configuration menu
- Integrate `Webdev` configuration into `lazyman`
- Add `Webdev` configuration menu
- Add category install counts to status report
- Add `Webdev` and `LazyIde` configs based on `LazyVim`
- Add `Craftzdog` to personals

### 🐞 Fixed

- Remove unused configuration entries from `LazyIde` and `Webdev` menus
- Move `Ember` from personal to starter
- Turn off notes plugins by default

## v2.1.6r3

### ⚡️ Added

- Add `OnMyWay` personal config
- Add `Normal` to `AstroNvim` configs
- Add support for `securitree.nvim` security check plugin, disabled by default
- Add example Plug install with `pathogen`
- Add notes on semantic tokens and `LaTeX`
- Add patch for `nvim-LaTeX` but still need to find issue
- Add new configs to `lazymanrc` open switch to get file browser support
- Add `Scratch` to starters
- Add `Lsp/Mason/Cmp` `VonHeikemen` starters
- Add `Dillon` personal config

### 🐞 Fixed

- Break `VonHeikemen` starters out
- Move Black Belt `AstroNvim` configs from personal to starter
- Use the `runconfig()` function for `neovide` as well as `nvim`
- Do not lazy load `securitree.nvim`

## v2.1.6r2

### ⚡️ Added

- Add `usage` argument to `lazyman`, add examples to man page
- Add `Rafi`, `Slydragonn`, and `Optixal` to `lazymanrc` file tree open function
- Add `kill_all_neovim` script, fixup lazymanrc
- Add `run_config.sh` script executed from lazymanrc and lazyman to run neovim with a designated config
- Expand `lazymanrc` file tree opening for several configs
- Add switch to `lazymanrc` for some configs to bring up file tree
- Add `Normal` configuration to `Starters`
- Add `nvim2k` configuration to `Personals`

### 🐞 Fixed

- Split file tree plugins out into separate module
- Move `run_config.sh` into .lazymanrc as a function
- Fix `lspconfig` use of `gitsigns`
- Update `LaTeX` video playlist link
- Move tables of configs down to Supported configurations section
- Fix `Abstract`, `CodeArt`, add custom filetree plugin to `Kickstart`
- Rename `PDE` to `pde` to conform with internal scripts

## v2.1.6r1

### ⚡️ Added

- Move all `Custom` category configs to `Personal`
- Add `Traap` to `Personals`
- Add several advanced `AstroNvim` user configurations
- Add `AstroNvim` configurations menu support
- Add patch for `Magidc` `codelldb` mason registry error
- Add `Spider` and `Xiao` configurations
- Add install/open/remove keywords to main menu
- Add main menu help screen
- Add J4de to Personals
- Add LazyVim and NvChad config groups with menu support
- Update usage message and man page

### 🐞 Fixed

- Remove `Custom` category
- Fix `nvim-tree` config, reduce width of both file tree plugins
- Rename `AstroNvim` user configs
- Simplify removal menu entries
- Reinstate `Magidc` in `Personals`, take `Plug` out of `Personals`

## v2.1.5r5

### ⚡️ Added

- Add `Rafi` configuration to `Custom`
- Add `smartcolumn` and `virt-column` line length delimiter plugins
- Add highlights for line number and virtual cursor column
- Add `zen-mode` support
- Smart column and zen mode configurable from menus
- Add autocmd for `TermOpen` columns
- Add `keymaps` for toggling additional settings

### 🐞 Fixed

- Move `3rd` config from `Custom` to `Personal`
- Fix `statuscol` plugin entry

## v2.1.5r4

### ⚡️ Added

- Add `shellcheck` to `null-ls` configuration

### 🐞 Fixed

- Use `POSIX` compliant `sed` actions in config menu table modifications, `macOS` fix

## v2.1.5r3

### ⚡️ Added

- Add better folding with `nvim-ufo` and active window highlight with `nvim-shade`
- Add `lua/extras` folder with reference plugin configurations for possible future use
- Add support for `mini.indentscope` as an indent line option, make it the default
- Add support for `NeoAI` coding assistant
- Add options setting to `vim-markdown` plugin
- Instruct `prettier` to ignore tables in markdown
- Update number of supported configs, update config tables in release notes
- Move `SaleVim` from Custom to Language category
- Add `Josean` config to Custom
- Create and populate new `Language` category of configurations
- Adjust `copilot` suggestion keymaps
- Improve `nvim-ufo` configuration
- Reconfigure `nvim-ufo`, add `fillchar` and folding options
- Add `nvim-cmp` sorting priority weight
- Set priority levels for `nvim-cmp` sources
- Add better folding with `nvim-ufo` and active window highlight with `nvim-shade`

### 🐞 Fixed

- Do not lazy load `copilot` to avoid `EPIPE` error
- Fix `copilot` cmp loading error
- Change `-Y` to accept Custom config name or All
- Fix Install All with install Language category
- Set priority levels for `nvim-cmp` sources
- Fix input error initially loading copilot in `nvim-cmp`
- Check `OPENAI_API_KEY` before enabling `NeoAI` plugin
- Use `snipmate` rather than `vscode` for custom snippets
- Remove support for `codeium` coding assistant
- Update `codeexplain` model size

## v2.1.5r2

### ⚡️ Added

- Add support for `copilot`
- Break `nvim-Lazyman` configuration menus out into separate script
- New configuration script `~/.config/nvim-Lazyman/scripts/lazyman_config.sh`
- Adjust `cmp` highlights
- Only modify occurrences of `/nvim/` in Lua and Vimscript files
- Only load `cmp-npm` if `copilot` is disabled as copilot handles `npm` completion
- Set `nvim-cmp` highlight groups, do not lazy load `cmp-npm`
- Add `cmp-calc` and `cmp-npm` to `nvim-cmp`
- Add `codicons` to `utils/icons.lua`
- Update man page with `copilot` entry
- Merge icon tables in `nvim-cmp` to display completion type icons correctly
- Add menu config support for `copilot`
- Add support for `copilot` `nvim-cmp` completions
- Update `mini.comment`
- Add `enable_copilot` to `configuration.lua`
- Use standard winbar by default

### 🐞 Fixed

- Fix exit status check
- Disable lazy loading of `copilot`
- Update `cmp-npm` config with `filetype` loading trigger and dependency
- Fix find command to modify Lua and Vimscript `/nvim/` pathnames
- Remove `snippy` support, always use `luasnip`
- Get `copilot` completion and snippets right in `nvim-cmp`
- Check exit status from sub-menus to either exit or redisplay main menu
- Remove trim newlines and white space from `null-ls` sources
- Only re-initialize Lazyman config when exiting `lazyman_config.sh`

## v2.1.4r4

### ⚡️ Added

- Add `Allaman` config
- Add note taking plugins with menu configuration support
- Add support for multiple easy motion plugins (`hop` and `leap`)
- Add and enhance snippets
- Add patch for the `Allaman` config

### 🐞 Fixed

- Move `AlanVim`, `Charles`, and `Magidc` Custom configs to Personal
- Improve `lazyman` health check report
- Fix health check file name in `lazyman` show_health
- Remove trim newlines and whitespace from `null-ls` sources

## v2.1.4r3

### ⚡️ Added

- Added `health` argument to `lazyman` to generate a Neovim configuration health check
- Added `scripts/healthcheck.sh` to generate a health check from the command line

### 🐞 Fixed

- Format and order of messages
- Do not fixup `/nvim/` references for nvim-Lazyman
- Fix install all from command line, include `Base`
- If only `-U` given then set `neovimdir` to `nvim-Lazyman`
- Check for applied patch before applying
- Remove troublesome `update_config` section
- Fix references to `/nvim/` during installs and updates
- When installing multiple configs enable quiet mode
- Fix `winbar` menu selection

## v2.1.4r2

### ⚡️ Added

- Configure `barbecue` based on `enable_tabline`
- Add support for `barbecue` winbar
- Add `3rd` to Custom
- Add Makefile for generating profiles and benchmarks
- Add configuration patch script for patches applied during initialization
- Add snippets for additional languages
- Add support for multiple snippet plugins, right now `luasnip` and `snippy`
- Add `bob` nvim to path after install bob
- Add NvChad based Python developer config to Custom

### 🐞 Fixed

- Remove rainbow 2 plugin, it was hanging on large files
- Only enable lsp servers listed in configuration.lua
- Don't use quiet flag when installing or updating Base configs
- Only show alias if not quiet mode
- Do not use -A to install or update all as it appears broken
- Hide `lualine` only if enabled
- Only show lsp servers in tabline if winbar is enabled
- Change `enable_winbar` from boolean to string, remove `enable_barbecue`
- Issue warning if patch utility not found
- Remove custom installed configs as well when -A -R are provided
- Change snippy cut text mapping from <leader>x to <leader>X to avoid conflict with diagnostics mapping
- Move `CodeArt` and `CosmicNvim` up into Starter configs
- Expand description of Bob Neovim version manager

## v2.1.4r1

### ⚡️ Added

- Add help to all menus
- Add help for the Neovim version selection menu
- Split Neovim version selection menu out into a function, call it from all other menus
- Add Neovim version management menu using the `bob` Neovim version manager
- Add submenu to select Neovim version if `bob` is installed and multiple versions have been installed
- Add list neovim versions to menu if `bob` installed
- Add `Modern` neovim configuration to `Personals`
- Add menu option to install `Bob` neovim version manager

### 🐞 Fixed

- Redirect `bob` output
- Format neovim version menu
- Display config menu if just `-F` is provided

## v2.1.3r5

### ⚡️ Added

- Add `SaleVim` to Custom configs
- Begin defining the data structure for a YAML representation of Lazyman configurations
- Add `scripts/parse_yaml.sh` to parse YAML in pure Bash if `yq` not available
- Add `scripts/lazyman.yaml` initial version of a configuration configuration
- Add `scripts/test-yaml.sh` script to test lazyman config `lazyman.yaml`

### 🐞 Fixed

- Move `BasicIde` from Custom to Base
- If no subir is specified then no branch need be specified
- Fix `Penguin` install as part of all

## v2.1.3r4

### ⚡️ Added

- Add `Extralight` starter config
- Change `indent-blankline` configuration from boolean to string indicating style
- Don't re-initialize in menus unless a change in plugins has been made
- Move statusline to tabline if tabline disabled and statusline enabled
- Use `configuration.lua` entries to reset showtabline and laststatus
- Install `lsd` with cargo if native platform install fails
- Python 3.9 or greater required for `codeexplain` plugin
- Add download and install of `ascii-image-converter`

### 🐞 Fixed

- Move `Nv` to Custom configs
- Disable `stylua` by default when using `lua_ls`
- Move `Ohmynvim` from Custom to Starter and rename it `HardHacker`
- Check for existence of some commands before installing

## v2.1.3r3

### ⚡️ Added

- Add `golines` to `null-ls` formatters
- Add script to install `delve`
- Add `rust` to treesitter parsers
- Add `PDE` config to Starters
- Use bang in `PlugInstall`
- Configure `gopls` in `go.lua` off setting in configuration.lua
- Log debug initialization to logs folder
- Install specific versions of pip modules for `codeexplain` in `gpt4all.sh`
- Add menu option to remove GPT model file
- Add `llama-cpp-python` to dependencies
- Run `UpdateRemotePlugins` in `codeexplain` build
- Add `langchain` and `Pygments` to installed dependencies
- Add GPT4ALL `codeexplain.nvim` plugin and menu support

### 🐞 Fixed

- Force reinstall and upgrade of pip modules in `install_neovim.sh`
- Change GPT model download to `vicuna`
- Disable `codeexplain` plugin when GPT model is removed
- Use `set_conf_value` rather than `sed`
- Only need to install specific versions of `langchain` and `llama-cpp-python` for `codeexplain.nvim`
- Fix `select_opts` setting in `nvim-cmp`
- Fix navic attached lspconfig, enable `rust analyzer`
- Improve `sed` of `configuration.lua` table entries to permit multiple spaces or tabs preceding comment markers
- Git ignore everything in logs folder except README.md

## v2.1.3r2

### ⚡️ Added

- Add -t and -T flags to list installed and uninstalled configs
- Add plugins menu screenshot to README
- Add custom config folders to status report
- Add git report to Lazyman status
- List uninstalled in Lazyman status

### 🐞 Fixed

- Fix debug mode and add it to menu
- Reorder main menu entries
- Fix GUI toggle menu entry
- Move navic location to tabline if winbar not enabled
- Disable screensaver by default

## v2.1.3r1

### ⚡️ Added

- Use a timeout function to terminate hung headless `nvim` initialization
- Add `Slydragonn` to Custom
- Add `zone.nvim` screensaver and configuration support for both zone and drop
- Configuration timeout parameter for screensavers
- Menu support for screensavers and timeout
- Add `terminal.nvim` keymaps to cheatsheet

### 🐞 Fixed

- Use my fork of the cheatsheet plugin
  - Enhanced plugin and markdown cheatsheets
  - Which-Key integration
- Move Penguin to Base
- Add `configuration-prev.lua` to gitignore
- Update keymaps doc with terminal and gitsigns mappings
- Shorten some lazyman menu entries

## v2.1.2r3

### ⚡️ Added

- Add configurable support for `drop` screensaver
- Add support for `Custom` configurations updates

### 🐞 Fixed

- Check if config folder exists before initializing
- Order menu options
- Remove `lean` figlet font
- Replace `config_version` test with check for number of config entries

## v2.1.2r2

### ⚡️ Added

- Over 40 Neovim configurations now supported
- Add select and 'Install' 'Open' 'Remove' config entries to menu
- Add support for installing, removing, and opening `Custom` configs from the command line and `lazyman` menu

### 🐞 Fixed

- Use Moon phases for installation status
- Remove individual 'Open' configs from menu

## v2.1.2r1

### ⚡️ Added

- Add menu support for configuring telescope media backend
- Add menu support for multi cursor and lualine lsp progress
- Add configuration option to display LSP progress in winbar rather than with Noice
- Add penguinVim to custom configs
- Use `SHELLCHECK_PATH` environment variable to override `bashls` shellcheck setting
- Check `OPENAI_API_KEY` before enabling ChatGPT plugin
- Add update section to known limitations
- Add `.initialized` and `lua/configuration-orig.lua` to `.gitignore`

### 🐞 Fixed

- Fix lualine winbar without lsp progress
- Remove custom SpaceVim folder when removing SpaceVim
- Remove `.nvimdirs` from git repo, auto-generate it during initialization
- Disable shellcheck by default as it is behaving poorly
- Enable/disable shellcheck in `bashls`
- Do not use shellcheck as a source in `null-ls`
- Fix telescope make extension dependency on toggleterm
- Add timeout to null-ls formatters
- Provide some output when performing installs via `lazyman install`

## v2.1.1r1

### ⚡️ Added

- Use `null-ls` when `enable_coding` is false
- Enable/Disable all LSP servers when `enable_coding` is true/false
- Split `null-ls` config out into separate file
- Mods to `nvim-cmp` configuration for coding/non-coding settings
- Add `enable_coding` setting to `configuration.lua`
- Add `enable_coding` to `configuration.lua` and base plugins off that
- Add support for configuring a non-programming editing environment
- Add autocmd to avoid shellcheck duplication between `bashls` and `null-ls`
- Use version info in `configuration.lua` to restore or replace it during updates
- Add version info to `configuration.lua`, check in `update_config`
- Add `install`, `open`, and `remove` arguments to fuzzy search and select a configuration to 'install', 'open', or 'remove' from the lazyman command line

### 🐞 Fixed

- Disable `vim-illuminate`, `indent-blankline`, and `treesitter` highlights for large files
- Menu formatting, handle out of range menu selections
- Reduce file size for which `shellcheck` is disabled, disable `beautysh` by default
- Fix ranger float auto-configuration, disable `shellcheck` on large files, prompt before disabling coding features

## v2.1.0r1

### ⚡️ Added

- Most plugins can now be enabled or disabled in `configuration.lua`
- All entries in `configuration.lua` can be set via `lazyman` menus
- Split plugins config out into separate menu
- Add enable/disable for `toggleterm` plugin
- Add enable/disable for `dressing` UI improvement plugin
- Disable ranger float plugin if `ranger` not found
- Add enable/disable for `dressing` ui improvement plugin
- Add enable/disable for `bbye` and `startuptime` plugins
- Add enable/disable `renamer` plugin to Lazyman config menu
- Add enable/disable `compile` plugin to compile and run current file
- Add enable/disable file tree plugin and session manager with 'none' as an option
- Add enable/disable `ranger` float plugin to lazyman config menu
- Add enable/disable `asciiart`, `cheatsheet`, and `hop`
- Add configuration menus for LSP servers, formatters, and linters
- Configure LSP servers, formatters, and linters based on settings in `configuation.lua`
- Add '-f path' argument to fix treesitter help parser config
- Add LaTeX personal config, move ONNO config from custom to personal
- Add `nvim-surround` to configurable plugins in configuration.lua and lazyman menu
- Improve dashboard autocmds to preserve tabline and statusline
- Add showtabline to config menu, auto-configure wakatime
- Add LSP Servers menu to enable and disable individual lsp servers
- Use `rich-cli` for menu headings if `figlet` not available
- Add `WakaTime` plugin enable/disable to Lazyman Configuration Menu
- Check for `WakaTime` in custom configs
- Add optional support for `WakaTime` in Lazyman config
- Check for `julia` and `composer` for Install Tools menu entry
- Simplify leader keymaps a little
- Add `hop` and `treehopper` plugins with extensive keymaps
- Add `-a` argument to `install_neovim.sh` to install all servers and tools
- Link to NvChad customization repo
- Add `Elianiva` to known working custom configs
- Add `Install` and `Uninstall` scripts

### 🐞 Fixed

- Make `enable_tabline` and `enable_statusline` work as expected
- Enable `beautysh`, disable `shellcheck` - it is choking on large files
- Fix prompt for enabling WakaTime if no .wakatime.cfg detected
- Do not remap '?' to '/' in hop config
- Fix bug in menu selection by name rather than number
- Remove lvim-shell and lvim-fm
- Only configure LSP servers if enabled in configuration.lua
- Fix prompt for enabling `WakaTime` if no `.wakatime.cfg` detected
- Check `.initialized` and if not present initialize Lazyman
- Run `MasonInstallAll` for NvChad initialization
- `lazyman -I` now invokes Neovim install script with `-a`, `-i` does what `-I` used to do
- Remove `terraform`
- Change keymap for `LuaSnip` with Hop to `lS`, conflicted with `bnext`

## v2.0.1r7

### ⚡️ Added

- Add Basic config to starters
- Add table of custom configs to release notes

### 🐞 Fixed

- Fix `nvim-cmp` experimental `ghost_text` setting [#1565](/hrsh7th/nvim-cmp/issues/1565)
- Improved custom NvChad add-on
- Specify branch and panvimdoc version in workflows

## v2.0.1r6

### ⚡️ Added

- Add table of custom configs and expand section on custom configurations

### 🐞 Fixed

- Fix argument passing to `install_neovim.sh`

## v2.0.1r5

### ⚡️ Added

- Add known custom configs, expand custom section
- Added another example of a config using vim-plug
- Install typescript npm package
- Add custom SpaceVim config
- Add support for mason-nvim-dap auto install of adapters
- Add Ember to Personal

### 🐞 Fixed

- Cancel removal if the requested config is the standard Neovim config dir
- Fix nvim-dap configuration
- Move Nv to Base
- Rename MiniVim to Mini
- Clarify description of Personal category, mini.nvim is a library

## v2.0.1r4

### ⚡️ Added

- Add `tldrf` alias for fuzzy search and select tldr cheatsheet
- Add -Q option to exit lazyman after install
- Install tealdeer in install_neovim.sh
- Add cellular automota to games and game keymaps
- Move Abstract config to Base category and MiniVim to Personal
- Renamed 'Extra' category to 'Personal' to better reflect its nature
- Check for older format configuration.lua during updates
- Add Disable All and Enable All entries to configuration menu
- Add to mini.starter footer
- Simplify multiple dashboard configuration
- Add cheatsheet to mini.starter dashboard

### 🐞 Fixed

- Improved telescope with keymaps and fzf extension
- Fix tldrf alias preview window and color output
- Removed duplicate telescope entries

## v2.0.1r3

### ⚡️ Added

- Add support for MiniVim base neovim configuration
- Support for multiple dashboards
- Configure mini.starter start screen
- Add mini.starter dashboard, remove startup dashboard
- Add support for mini.starter dashboard
- Improve dashboard-nvim
- Lazy sync newly configured dashboard
- Fuzzy selection dialogs for dashboards
- Enable Alpha dashboard by default
- Add cheatsheet to dashboards
- Add cheatsheet keymaps to keymaps doc
- Add lazyman, plugins, gitsigns, and markdown sections to custom cheatsheet
- Add cheatsheet plugin and custom cheatsheet.txt
- Add treesj Treesitter split/join plugin and custom keymaps
- Replace mini.surround with nvim-surround
- Add Adib Neovim configuration to extras

### 🐞 Fixed

- The MiniVim configuration needs no initialization
- Fix mini.starter autocmd for dynamic footer
- Enable and disable bundled cheatsheets selectively
- Replace bundled gitsigns and markdown cheatsheets with custom ones
- Show Remove All menu entry based on number of nvimdirs
- Lazy load cheatsheet plugin
- Lazy load lspconfig
- Install tree-sitter cli with cargo if available then npm if not
- Widen telescope popup window
- Do not prompt for install type if native packaging and Homebrew not detected
- Update Lazyman keymaps doc
- Move NvPak Neovim configuration to starters

## v2.0.1r2

### ⚡️ Added

- Bug fix release

### 🐞 Fixed

- Remove Lazyman config from Base, it is installed by default
- Fix install All in menu, -A is now install all
- Fix install Base in menu, -A changed to -B

## v2.0.1r1

### ⚡️ Added

- Add support for native package manager on Alpine Linux
- Install nightly neovim build in HOME/.local rather than /usr/local
- The -A flag now installs all configs
- Add -B flag to install Base configs
- Add status argument
- Add Select and Install menu option
- Remove individual install menu options
- Remove Lazyman from lazymanrc items for removal

### 🐞 Fixed

- Fix test for neovim version
- Fix build/install of nightly neovim
- Install `python3-venv` on Debian based platforms
- Fix use of missing figlet fonts

## v2.0.0r2

### ⚡️ Added

- Install `gh` from binary download rather than package manager
- Use `npm` to install `fd-find` rather than package managers
- Add Abstract Neovim configuration to extras
- Rename Knmac config to Knvim with new config url

### 🐞 Fixed

- Fix install starter menu entries
- Only show remove menu entries when partial or fully installed

## v2.0.0r1

### ⚡️ Added

- Default to native package managers for Arch, Debian, SUSE, Void, and RPM systems
- Add support for SUSE and Void Linux native package managers
- Move black, beautysh, and ruff to pip install
- Add known limitations section
- Install ruby-dev/ruby-devel if needed
- Add -h option to indicate use Homebrew rather than native package manager
- Inform user of `sudo` privilege when doing native installs
- Notify if Homebrew is detected during install prompt
- Use binary distribution tar archive for native Neovim install
- Install `lazygit` with release asset download if doing native install
- Install `zoxide` with install script rather than package manager
- If no native package manager found then use Homebrew
- Use `dnf/yum` on all RPM based platforms
- Use apt on all Debian based platforms
- Default to `pacman` on Arch and Arch-Like platforms
- Default to Homebrew on macOS
- Prompt to use native package manager on Debian and RPM systems unless -y is given
- Add `CosmicNvim` example custom config
- Rename Knmac to Knvim with new repository url

### 🐞 Fixed

- Quote arguments to `bindkey`
- Update NvChad and AstroNvim custom folders when updating the respective repos
- Move appending sourcing of .lazymanrc after Homebrew shell setup

## v1.0.5r3

### ⚡️ Added

- Source environment files and set brew path on lazyman startup
- Add open lazyman menu entry to configuration menu
- Update lazyman keymaps markdown, man page, and doc
- Add descriptions to terminal keymaps

### 🐞 Fixed

- Resolve conflicting keymaps in gitsigns, terminal, lspconfig
- Fixed Docker image build and push in github action
- Do not build docker image for arm architecture, build for x86_64 and amd64
- Fix check for brew executable in set_brew

## v1.0.5r2

### ⚡️ Added

- Use .initialized file to indicate initialization has been performed

### 🐞 Fixed

- Move python check after neovim install

## v1.0.5r1

### ⚡️ Added

- Move section on manual installation to Wiki
- Install dependencies and tools even if nvim is already installed
- Add latexindent to Mason tools install
- Locate python3 and ruby neovim gem in globals.lua

### 🐞 Fixed

- Don't run nvim if interactive mode enabled
- Change toggle ui menu entry
- Add zoxide to checks for tools menu entry
- Update local/bin/lazyman when nvim-Lazyman is updated
- Do not run install script if nvim-Lazyman config dir exists
- Remove duplicate test for previously installed packages
- Strip unprintable characters from ruby path returned by vim.fn.system

## v1.0.4r3

### ⚡️ Added

- Install ruby neovim gem in user dir, expand search for ruby neovim
- Rework how gem is found and ruby_host_prog set
- Use Homebrew python3 and ruby neovim gem

### 🐞 Fixed

- Move gopls julials and denols from Homebrew to Mason
- Replace Allaman config (broken for now) with Roiz config

## v1.0.4r2

### ⚡️ Added

- Add bat and lsd to tools, add aliases for bat and lsd
- Add custom LunarVim user config from <https://youtu.be/Qf9gfx7gWEY>
- Update which-key opts passed to config
- Add Help section to doc
- Add Lazyman-Keymaps vimdoc, rename nvim-Lazyman vimdoc to Lazyman
- Adjust Alpha and Asciiville keymaps
- Add renamer config
- Add LAZYMAN section to doc so :Lazyman goes to right place
- Add which-key mapping for ChatGPTEditWithInstructions command
- Add keymap to toggle transparency in several colorschemes
- Add Homebrew Upgrade to main menu
- Install bash with Homebrew if bash version less than 4
- One more attempt at getting updates right, probably not the last
- Set conceallevel to 0 to unhide markdown
- Restore configuration.lua on Lazyman update
- Fix treesitter highlighting for text filetype
- Adjust spell checking options and autocmds
- Enable transparency by default, remove breadcrumb from lspconfig
- Add Simple config to extras, Replace Abstract with Knmac in extras
- Add ftplugin/help.lua to enable treesitter highlights in vimdoc
- Add spell files, Add autocmd to auto enter insert mode in Terminal
- rust-analyzer, taplo, and pylsp now installed by Mason
- Add -r flag to nvims and neovides aliases for removal of selected config
- Add selected removal menu option
- Use LunarVim install and uninstall scripts but place LunarVim config location in ~/.config/nvim-LunarVim
- Add configuration menu to Alpha dashboard

### 🐞 Fixed

- Do not install julia or composer, leave that up to the user
- Move gopls install from Mason to Homebrew
- Move some language server installs back to Mason, adjust mason and lspconfig setup
- Split mason out from lspconfig in plugins
- Split panvimdoc workflows out into 2 separate workflows

## v1.0.4r1

### ⚡️ Added

- Add -F option to lazyman for quick access to configuration menau
- Add :Lazyconf command and ,lc key binding for even quicker access to configuration menu
- Add Lazyman Configuration submenu
- Setup extensive Dap configuration
- Move navic lsp location to tabline and file path to winbar
- Set navic depth_limit to 0 and depth_limit_indicator to ..
- Enable winbar by default with navic location from lsp
- Add navic location in winbar
- Add back in lspconfig on_attach with diagnostic goto
- Add markdownlint and terraform
- Install luarocks and cspell
- Add vimdoc to treesitter ensure installed

### 🐞 Fixed

- Refactor lspconfig with navic
- Refactor mason, null-ls, lspconfig
- Adjust Alpha dashboard highlight used for category titles
- Rename VonHeikemen config to Heiker
- Fix link to issues image

## v1.0.3r4

### ⚡️ Added

- Add separate installation commands in README for easy copy/paste

### 🐞 Fixed

- Disable interactive mode and run nvim if nvim-Lazyman not yet initialized

## v1.0.3r3

### ⚡️ Added

- Add autocmd to disable or convert semantic highlights
- Add configuration.lua settings for semantic highlighting
- Use noice for signature help markdown if noice is enabled
- Add shellcheck comment in Lazyman shell initialization to satisfy SC1090
- Install gh in install_neovim.sh

### 🐞 Fixed

- Check if executable exists in config and keymaps for Terminal apps
- Fix asciiville Neovim terminal command so it does not use splash screen

## v1.0.3r2

### ⚡️ Added

- Add lazyman command to alpha menu
- Add info on interactive use of terminal
- Add section on Lazyman Neovim Terminal to README and man page
- Add terminal config for lazyman and asciiville to Features section
- Adjust menu system to look nice in a Neovim terminal
- Add Lazyman and Asciiville commands to Terminal
- Add diagnostics screenshot to coding section of Features
- Add -Z option to circumvent installation of Homebrew, Neovim, language servers, and tools
- Ignore default ~/.config/nvim directory, do not manage default nvim config

### 🐞 Fixed

- Fix signature help, add signature help keymaps
- Move Kickstart from Base to Starter
- Fix mason-null-ls configuration
- Reconfigure starter configs in menu
- Move some tools back to Mason from install_neovim.sh script
- Format lazyman menu for Neovim terminal
- Move telescope ignore patterns from configuration.lua to config/telescope.lua

## v1.0.3r1

### ⚡️ Added

- No longer need to compile neovim HEAD, version 0.9 is released
- Improved menu interface, better description of lazyman categories
- Try different approach to updates
- Add Lazyman Status to menu for lazyman and nvim info
- Install and initialize extra and starter configs with new -w, -x, -W, -X options
- Add support for nvim-starter Neovim configurations
- Add toggle gui to lazyman menu, add paths in lazymanrc
- Add Troubleshooting section to README
- Add experimental VonHeikemen distro
- Add support for Ecovim Neovim distribution
- Add convenience keymaps for plugin management and options
- Install jdtls with Mason, dynamically locate jvm runtimes for jdtls

### 🐞 Fixed

- Fix neovide select menu entries, fix env.sample copy
- Fix jdtls ftplugin/java.lua for both linux and macos

## v1.0.2r3

### ⚡️ Added

- Install jdtls with Mason, dynamically locate jvm runtimes for jdtls
- Reorganize lazyman menu
- Install cargo if not found
- Install markdownlint with Homebrew, remove from Mason installed tools
- Always install language servers and tools in install_neovim.sh
- Install neovim-remote HEAD after installing neovim HEAD
- Add convenience key binding for neovides menu, document neovides support in doc
- Add support for neovide in .lazymanrc aliases and function
- Add GUI initialization and autocmd for UIEnter
- Add install Neovide option to lazyman menu
- Add support for color indentlines
- Add custom flavor to catppuccin theme
- Add lsp-zero, add rounded border for LspInfo
- Add support for nvim terminal from rebelot
- Add xclip to tools check, rich menu formatting
- Remove silver searcher from dependencies

### 🐞 Fixed

- Fix ftplugin/java.lua for both linux and macos
- Adjust nvim-cmp config for performance
- Fix dracula and tokyonight panel transparency

## v1.0.2r2

### ⚡️ Added

- Add interactive menu system to manage Neovim configurations
- Use rich in the lazyman menu system if it is available
- Add figlet, lolcat, and rich-cli to brew installed tools
- Add hacker and octo plugins
- Add support for Neovim configs in repo subdirectories
- Add warning if lazymanrc not found
- Add styles for dracula theme

### 🐞 Fixed

- Go back to monokai-pro, issue resolved
- Move packer and plug plugin installs to initialization function
- Move Allaman distribution to unsupported for now as it has initialization errors
- Run nvim when initializing nvim-Lazyman, don't run nvim when initializing from menu system
- Recheck for tools after Install Tools in menu

## v1.0.2r1

### ⚡️ Added

- Dynamic nvims fuzzy selector menu generation to avoid logout/source
- Add support for dracula theme
- Remove shellharden, it strips too many things I like
- Make nvims an alias to dynamically generate the menu with the nvimselect function
- Install beautysh in install_neovim.sh rather than with Mason
- Add MagicVim to supported configs
- Split nvims keybind out into separate source
- Add support for removing all unsupported configs
- Dynamically generate nvims menu items from .nvimdirs maintained by lazyman
- Add neoscroll plugin for smooth scrolling
- Add support for SpaceVim
- Add lazymanrc shell initialization with aliases and nvims function
- Show which plugin manager is used for initialization
- Add support for vim-plug based initialization

### 🐞 Fixed

- Increase timeouts for lsp formatting
- Remove monokai-pro, waiting for author to fix doc/tags issue

## v1.0.1r1

### ⚡️ Added

- Use mason-null-ls as primary source rather than null-ls
- Language server and tools via Mason and lspconfig
- Use markdown man page as input to auto-generate vim doc

### 🐞 Fixed

- Treesitter playground uses deprecated calls, disable for now

## v1.0.0r3

### ⚡️ Added

- Add lazy updates to lualine
- Update README with latest configuration.lua
- Get show_diagnostics config working with all values

### 🐞 Fixed

- Better instructions on neovim install failure
- Check if ulimit hard limit is 'unlimited'
- Brew link libuv before compiling neovim

## v1.0.0r2

### ⚡️ Added

- Add lazyman.sh to release artifacts
- Add show diagnostics option to configuration.lua
- Add release creation script, version file, and release notes
- Add ChatGPT plugin
- Add Features section to README
- Add configuration.lua section to README
- Add '-e config' option to lazyman to execute nvim with a specified config
- Add helptag of any local help in the Neovim config 'doc' directory during initialization
- Add auto-generation of nvim-Lazyman doc
- Add support for LunarVim
- Disable Alpha header by default
- Add VimBeGood to games
- Add navigator, project, window-picker, and games - make them all configurable in configuration.lua
- Add rounded border to lazy popup
- Add support for everforest colorscheme/theme
- Add support for possession or persistance session manager, integrate with dashboards and lualine
- Add github workflows and badges

### 🐞 Fixed

- Fix bug in update function, add section on Updates to README
- If '-N nvimdir' is specified on the command line, use it even with supported configs, add note about Packer support
- Update add-on repositories when doing an update
- Fix Packer initialization

## v1.0.0r1

### ⚡️ Added

- Add 'media_backend' configuration setting for telescope display of media
- Add support for the Allaman Neovim configuration
- Add Neogit button to Alpha dashboard
- Add bookmarks and nvim-ide plugins (optional)
- Add fugitive and gv back in plugins along with neogit, check for NotifyBackground highlight group
- Neo-tree show hidden files, use updated repo name
- Rely on Mason for most language servers, remove them from install_neovim.sh
- Use a Lazyman custom NvChad configuration rather than example custom config
- Add support for NvChad install and initialization
- Remove bufferline plugin, using tabline
- Add dap and go plugins and configuration, modify tabline to display pathname of file
- Clarify manual installation and initialization
- Separate language servers and tools out into post-install action with lazyman -I
- Install dependencies, tools, and language servers with lazyman -I
- Show install times in debug mode
- Install neovim 0.9 if it is not present, install language servers with Homebrew unless Mason installs them
- Add -L cmd option to run a Lazy command
- Use latest treesitter, add rainbow treesitter and configs
- Add lazyman man page and lazyman update capability
- Add lualine themes for all supported colorschemes and styles
- Add support for onedarkpro and theme style setting
- Add section on unsupported configurations
- Add supported configurations section
- Use doctorfree/astronvim repository for AstroNvim user customization
- Add AstroNvim community plugins configuration
- Add support for Kickstart
- Experimental support for Packer initialization with -P option
- Add args to specify custom url and nvim config dir name
- Install neovim if it is not already installed
- Add -a and -R flags to install, don't backup lazyman but do a git pull
- Add -y flag to install.sh script
- Configure indent plugins with filetypes, enable Alpha
- Correct calls to vim.api in autocmds
- Add Alpha autocmds, load on VimEnter
- Add options, keymaps, and autocmds
- Add dry run, removal, and support for LazyVim to install script
- Add globals.lua to loads in plugins/settings.lua
- Note about shell initialization and export of NVIM_APPNAME
- Note about Neovim 0.9 and NVIM_APPNAME

### 🐞 Fixed

- Cleanup some more dupliate installs between Homebrew and Mason
- Only need to run 'Lazy sync' during initialization
- Disable semantic tokens in onedarkpro for now
- Fix AstroNvim user config clone, customize suggested alias per config
- Fix Mason plugin spec
