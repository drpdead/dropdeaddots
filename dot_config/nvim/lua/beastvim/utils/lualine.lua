local Utils = require("beastvim.utils")

---@class beastvim.utils.lualine
local M = {}

local context = {}
local counter = 0
---@param key string The key of the highlight group
function M.get_hl_gr(key)
  if context[key] ~= nil then
    return context[key]
  end
  local hl_gr = ("SL" .. counter):gsub("%s+", "")
  context[key] = hl_gr
  counter = counter + 1
  return hl_gr
end

---This function applies a specified highlight group to a given text string and optionally applies a different highlight group after the text.
---@param text string The text to highlight
---@param hl_cur string The highlight group to use
---@param hl_after? string The highlight group to use after the text
function M.hl_str(text, hl_cur, hl_after)
  if hl_after == nil then
    return "%#" .. hl_cur .. "#" .. text .. "%*"
  end
  return "%#" .. hl_cur .. "#" .. text .. "%*" .. "%#" .. hl_after .. "#"
end

---Truncates a text string to a specified minimum width and adds an ellipsis if necessary.
---@param text string The text to truncate
---@param min_width number The minimum width
function M.truncate(text, min_width)
  if string.len(text) > min_width then
    return string.sub(text, 1, min_width) .. "…"
  end
  return text
end

---@param type LualineSeparatorType
---@return HexColor
function M.get_component_bg(type)
  local bg = "#555555"
  if type == "fill" then
    bg = Utils.theme.highlight("Pmenu").bg or bg
  elseif type == "thin" then
    bg = Utils.theme.highlight("lualine_c_normal").bg or bg
  end
  return bg
end

---@param config LualineOptions
---@param texts {text: string, color: HexColor}[] Texts to display
---@param type LualineSeparatorType Type of the component (fill, thin)
---@param bg? HexColor Background of a component
---@param text_sep? string Separator between texts
function M.build_component(config, texts, type, bg, text_sep)
  local BAR_BG = Utils.theme.highlight("lualine_c_normal").bg
  local SEP_GROUP = "SLSeparator"
  bg = bg or M.get_component_bg(type)

  if type == "fill" then
    vim.api.nvim_set_hl(0, SEP_GROUP, { fg = bg, bg = BAR_BG })
  elseif type == "thin" then
    vim.api.nvim_set_hl(0, SEP_GROUP, { fg = Utils.theme.highlight("Pmenu").bg, bg = BAR_BG })
  end

  local merged_text = table.concat(
    vim.tbl_map(function(text)
      local hl_gr = M.get_hl_gr(text.text)
      if config.float then
        if type == "fill" then
          vim.api.nvim_set_hl(0, hl_gr, { fg = text.color, bg = bg })
        else
          vim.api.nvim_set_hl(0, hl_gr, { fg = text.color, bg = BAR_BG })
        end
      else
        vim.api.nvim_set_hl(0, hl_gr, { fg = text.color, bg = BAR_BG })
      end
      return M.hl_str(text.text, hl_gr, hl_gr)
    end, texts),
    text_sep or ""
  )
  if config.float then
    return M.hl_str(config.separator[type].left, SEP_GROUP)
      .. merged_text
      .. M.hl_str(config.separator[type].right, SEP_GROUP, SEP_GROUP)
  else
    return merged_text
  end
end

---Hide the component if the current window width is less than the specified minimum width
---@param width? number The minimum width -- Default: 85
function M.hide_width(width)
  width = width or 85
  return vim.fn.winwidth(0) > width
end

return M
