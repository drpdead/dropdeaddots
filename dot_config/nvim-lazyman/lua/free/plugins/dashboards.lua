local settings = require("configuration")
local dashboard_type = {}
local wakatime_type = {}
local alpha_disabled = { "goolord/alpha-nvim", enabled = false }
local mini_disabled = { "echasnovski/mini.starter", enabled = false }
local dashboard_disabled = { "glepnir/dashboard-nvim", enabled = false }
local autocmd = vim.api.nvim_create_autocmd

local session_restore = 'lua require("persistence").load({ last = true })'
if settings.session_manager == "possession" then
  session_restore = "Telescope possession list"
end

local dashboard_depend = { "nvim-tree/nvim-web-devicons" }
if settings.enable_terminal then
  dashboard_depend = { "rebelot/terminal.nvim", "nvim-tree/nvim-web-devicons" }
end

if settings.enable_wakatime then
  wakatime_type = {
    "wakatime/vim-wakatime",
    lazy = false,
  }
end

if settings.dashboard == "alpha" then
  alpha_disabled = {}
  dashboard_type = {
    "goolord/alpha-nvim",
    dependencies = dashboard_depend,
    enabled = true,
    event = "VimEnter",
    keys = { { "<leader>A", "<cmd>Alpha<CR>", "Alpha Dashboard" } },
    config = function()
      require("free.config.alpha")
    end,
  }
elseif settings.dashboard == "dash" then
  dashboard_disabled = {}
  dashboard_type = {
    "glepnir/dashboard-nvim",
    enabled = true,
    event = "VimEnter",
    dependencies = dashboard_depend,
    keys = { { "<leader>0", "<cmd>Dashboard<CR>", desc = "Dashboard" } },
    config = function()
      require("free.config.dashboard")
    end,
  }
elseif settings.dashboard == "mini" then
  mini_disabled = {}
  dashboard_type = {
    "echasnovski/mini.starter",
    version = "*",
    dependencies = dashboard_depend,
    enabled = true,
    event = "VimEnter",
    opts = function()
      local pad = string.rep(" ", 18)
      local new_section = function(name, action, section)
        return { name = name, action = action, section = pad .. section }
      end

      local starter = require("mini.starter")
      --stylua: ignore
      local config = {
        evaluate_single = true,
        header = function()
          local hour = tonumber(vim.fn.strftime('%H'))
          local part_id = math.floor((hour + 4) / 8) + 1
          local day_part =
              ({ 'evening', 'morning', 'afternoon', 'evening' })[part_id]
          local username = vim.loop.os_get_passwd()['username'] or 'USERNAME'
          return ('        Greetings! Good %s, %s'):format(day_part, username)
        end,
        items = {
          new_section("Find file", "Telescope find_files", "Telescope"),
          new_section("Recent files", "Telescope oldfiles", "Telescope"),
          new_section("Grep text", "Telescope live_grep", "Telescope"),
          new_section("Lazyman Menu", "Lazyman", "Config"),
          new_section("Configuration Menu", "Lazyconf", "Config"),
          new_section("Manage Plugins", "Lazy", "Config"),
          new_section("Package Manager", "Mason", "Config"),
          new_section("Help Cheatsheet", "Cheatsheet", "Config"),
          new_section("Session restore", session_restore, "Session"),
          new_section("New file", "ene | startinsert", "Built-in"),
          new_section("Quit", "qa", "Built-in"),
        },
        content_hooks = {
          starter.gen_hook.adding_bullet(pad .. "» ", false),
          starter.gen_hook.aligning("center", "center"),
        },
      }
      return config
    end,
    config = function(_, config)
      -- close Lazy and re-open when starter is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        autocmd("User", {
          pattern = "MiniStarterOpened",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      local starter = require("mini.starter")
      starter.setup(config)

      autocmd("User", {
        pattern = "MiniStarterOpened",
        callback = function()
          local datetime = os.date("  %Y-%b-%d   %H:%M:%S", os.time())
          local version = vim.version()
          local version_info = ""
          if version ~= nil then
            version_info = "v" .. version.major .. "." .. version.minor .. "." .. version.patch
          end
          local stats = require("lazy").stats()
          local vinfo = "Neovim " .. version_info
          local lazystats = "  loaded " .. stats.count .. " plugins "
          starter.config.footer = datetime .. "  " .. vinfo .. lazystats
          -- "⚡ Lazyman Neovim loaded " .. stats.count .. " plugins"
          pcall(starter.refresh)
        end,
      })
    end,
  }
  local mini_group = vim.api.nvim_create_augroup("Startup_mini", { clear = true })
  autocmd("User", {
    desc = "Disable status and tablines for mini.starter",
    pattern = "MiniStarterOpened",
    group = mini_group,
    callback = function()
      vim.opt.laststatus = 0
      vim.opt.showtabline = 0
      vim.opt_local.winbar = nil
      autocmd("BufUnload", {
        desc = "Reenable status and tablines for mini.starter",
        group = mini_group,
        pattern = "<buffer>",
        callback = function()
          local configuration = require("configuration")
          if configuration.enable_statusline then
            if configuration.global_statusline then
              vim.opt.laststatus = 3
            else
              vim.opt.laststatus = 2
            end
          else
            vim.opt.laststatus = 0
          end
          vim.opt.showtabline = configuration.showtabline
          if settings.enable_statusline then
            require("lualine").hide({
              place = { "statusline", "tabline", "winbar" },
              unhide = true,
            })
          end
        end,
      })
      if settings.enable_statusline then
        require("lualine").hide({
          place = { "statusline", "tabline", "winbar" },
          unhide = false,
        })
      end
    end,
  })
end

return {
  dashboard_type,
  alpha_disabled,
  dashboard_disabled,
  mini_disabled,
  wakatime_type,
}
