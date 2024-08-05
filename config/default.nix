{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./keys.nix
    ./sets.nix
    ./highlight.nix

    ./plug/colorscheme/biscuit.nix
    ./plug/colorscheme/colorscheme.nix

    ./plug/filetrees/neo-tree.nix

    ./plug/snippets/luasnip.nix
    ./plug/completion/cmp.nix
    ./plug/completion/copilot-cmp.nix
    ./plug/completion/lspkind.nix

    ./plug/git/gitlinker.nix
    ./plug/git/gitsigns.nix
    ./plug/git/fugitive.nix
    ./plug/git/lazygit.nix
    ./plug/git/worktree.nix

    ./plug/lsp/conform.nix
    ./plug/lsp/fidget.nix
    ./plug/lsp/hlchunk.nix
    ./plug/lsp/lsp.nix
    ./plug/lsp/lspsaga.nix
    ./plug/lsp/none-ls.nix
    ./plug/lsp/trouble.nix

    ./plug/statusline/lualine.nix
    #./plug/statusline/staline.nix

    #./plug/treesitter/treesitter-context.nix
    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/rainbow-delimiters.nix
    ./plug/treesitter/treesitter.nix

    #./plug/ui/alpha.nix
    ./plug/ui/bufferline.nix
    ./plug/ui/noice.nix
    ./plug/ui/nvim-notify.nix
    ./plug/ui/telescope.nix
    ./plug/ui/neoscroll.nix

    ./plug/utils/copilot.nix
    ./plug/utils/flash.nix
    ./plug/utils/hardtime.nix
    #./plug/utils/harpoon.nix
    ./plug/utils/grapple.nix
    ./plug/utils/illuminate.nix
    ./plug/utils/nvim-autopairs.nix
    ./plug/utils/oil.nix
    ./plug/utils/undotree.nix
    ./plug/utils/ufo.nix
    ./plug/utils/whichkey.nix
    ./plug/utils/undotree.nix
    ./plug/utils/surround.nix
    ./plug/utils/comment.nix
    ./plug/utils/zen-mode.nix
    ./plug/utils/project.nix
    ./plug/utils/better-escape.nix
    ./plug/utils/auto-session.nix
    #./plug/utils/mini.nix
  ];
  options = {
    theme = lib.mkOption {
      default = "paradise";
      type = lib.types.str;
    };
  };
  config = {
    theme = "paradise";
    extraPlugins = with pkgs.vimPlugins; [
      nvim-spectre
      vim-startuptime
      telescope-zoxide
    ];

    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
