{
  autoCmd = [
    # Vertically center document when entering insert mode
    {
      event = "InsertEnter";
      command = "norm zz";
    }
    # Close Telescope prompt in insert mode by clicking escape
    {
      event = ["FileType"];
      pattern = "TelescopePrompt";
      command = "inoremap <buffer><silent> <ESC> <ESC>:close!<CR>";
    }
    # Enable spellcheck for some filetypes
    {
      event = "FileType";
      pattern = [
        "markdown"
      ];
      command = "setlocal spell spelllang=en,sv";
    }
    # Hilight yank text
    {
      event = "TextYankPost";
      pattern = "*";
      command = "lua vim.highlight.on_yank{timeout=500}";
    }
    # Enter git buffer in insert mode
    {
      event = "FileType";
      pattern = [
        "gitcommit"
        "gitrebase"
      ];
      command = "startinsert | 1";
    }
  ];
}
