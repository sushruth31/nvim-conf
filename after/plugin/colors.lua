local catppuccin = require("catppuccin")

catppuccin.setup({
    flavor = "mocha",
    term_colors = true,
    no_italic = false,
    no_bold = false,
    color_overrides = {
        mocha = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
        },
    },
    highlight_overrides = {
        mocha = function(C)
            return {
                TabLineSel = { bg = C.pink },
				CmpBorder = { fg = C.surface2 },
				Pmenu = { bg = C.none },
				TelescopeBorder = { link = "FloatBorder" },
            }
        end,
    }
})

 function ColorMyPencils(color)
 	color = color or "rose-pine"
 	vim.cmd.colorscheme(color)

    if color == 'dracula' then
        vim.api.nvim_set_hl(0, "Normal", { bg = "#111724" })
	    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#111724" })
     else
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    end

    vim.api.nvim_set_hl(0, "LineNr", { fg = "#5eacd3" })

 end

ColorMyPencils("catppuccin")

