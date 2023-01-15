local options ={
    clipboard = "unnamedplus",
    cmdheight = 1,
    fileencoding = "utf-8",
    hlsearch = false,
    incsearch = true,
    ignorecase = true,
    pumheight = 15,
    showmode = true,
    showtabline = 5,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swf = false,
    backup = false,
    undodir = os.getenv("HOME") .. "/.nvim/undodir",
    undofile = true,
    wrap = false,
    termguicolors = true,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    softtabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = true,
    numberwidth = 3,
    signcolumn = "yes",
    scrolloff = 8,
    sidescrolloff = 8,
    updatetime = 50,
    colorcolumn = "80",
    list = true,
    spelllang = "en_us",
    wildmenu = true,
    laststatus = 3,
}
vim.opt.shortmess:append "c"
vim.opt.isfname:append("@-@")
vim.opt.path:append("**")
vim.opt.complete:append("kspell")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.g.mapleader = " "

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
