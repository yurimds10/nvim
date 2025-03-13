return {
  'saghen/blink.cmp',
  dependencies = {
    {
      'L3MON4D3/LuaSnip',
      version = 'v2.*',
      dependencies = {
        'rafamadriz/friendly-snippets',
        config = function()
          require('luasnip.loaders.from_vscode').lazy_load({ paths = { vim.fn.stdpath 'config' .. '/snippets' } })
        end
      },
      config = function()
        require('luasnip')
      end,
    },
  },
  version = '*',

  config = function()
    require("blink.cmp").setup({
      keymap = {
        --["<C-Tab>"] = {"cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})"},
        ["<C-j>"] = {"select_next", "fallback"},
        ["<C-k>"] = {"select_prev", "fallback"},
        --["<C-e>"] = {"abort()"},
        ["<C-b>"] = {"scroll_documentation_down"},
        ["<C-f>"] = {"scroll_documentation_up"},
        --["<C-Space>"] = {"cmp.mapping.complete()"},
        --["<C-CR>"] = {"cmp.mapping.confirm({ select = true })"},
        --["<S-CR>"] = {"cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })"},
      };

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },

      completion = {
        list = {
          selection = {
            preselect = false
          }
        },
        accept = {
          auto_brackets = {
            enabled = false,
          },
        },
        menu = {
          border = 'rounded',
          draw = {
            -- padding = 1,
            -- gap = 4,
            columns = { {"kind_icon", "label", "label_description", gap = 1 }, {  "kind", gap = 1 } },
            components = {
              kind = {
                text = function(ctx)
                  local len = 10 - string.len(ctx.kind)
                  local space = string.rep(" ", len)
                  return ctx.kind .. space .. '[' .. ctx.source_name .. ']'
                end
              }
            },
          }
        },
        documentation = {
          window = { border = 'rounded' },
          auto_show = true,
          auto_show_delay_ms = 0,
        },
      },

      sources = {
        default = { 'snippets', 'lsp', 'path', 'buffer' },
        providers = {
          snippets = {
            min_keyword_length = 1,
            score_offset = 4,
          },
          lsp = {
            min_keyword_length = 0,
            score_offset = 3,
            name = "LSP",
            module = "blink.cmp.sources.lsp",
            fallbacks = { },
          },
          path = {
            min_keyword_length = 0,
            score_offset = 2,
          },
          buffer = {
            min_keyword_length = 1,
            score_offset = 1,
          },
        },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" }
    })
  end,

  opts_extend = { "sources.default" }
}
