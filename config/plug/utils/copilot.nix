{
  pkgs,
  lib,
  ...
}: let
  copilotChatRepo = {
    owner = "copilotc-nvim";
    repo = "CopilotChat.nvim";
    rev = "2771f1fa7af502ea4226a88a792f4e4319199906";
    hash = "sha256-Q+g81BQVQTY5J2c2ZWB7bjJLuNSdI0PAan+75YJ7mI0=";
  };
in {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "copilotchat";
      version = "2.4.0";
      src = pkgs.fetchFromGitHub copilotChatRepo;
      meta = {
        description = "Chat with GitHub Copilot in Neovim";
        homepage = "https://github.com/CopilotC-Nvim/CopilotChat.nvim/";
        license = lib.licenses.gpl3;
      };
    })
  ];
  extraConfigLua = ''
    require("CopilotChat").setup {
      model = 'gpt-4',
      debug = true,
      temperature = 0.1,
      window = {
        layout = 'vertical'
      },
    }
  '';

  keymaps = [
    {
      mode = "x";
      key = "<leader>a";
      action = "+copilot";
    }
    {
      mode = "x";
      key = "<leader>ae";
      action = "<cmd>CopilotChatExplain<cr>";
    }
    {
      mode = "x";
      key = "<leader>af";
      action = "<cmd>CopilotChatFix<cr>";
    }
    {
      mode = "x";
      key = "<leader>ad";
      action = "<cmd>CopilotChatDocs<cr>";
    }
    {
      mode = "x";
      key = "<leader>ac";
      action = "<cmd>CopilotChatCommit<cr>";
    }
    {
      mode = "x";
      key = "<leader>ao";
      action = "<cmd>CopilotChatOptimize<cr>";
    }
    {
      mode = "x";
      key = "<leader>at";
      action = "<cmd>CopilotChatTranslate<cr>";
    }
    {
      mode = "x";
      key = "<leader>ag";
      action = "<cmd>CopilotChatGenerateTests<cr>";
    }
    {
      mode = "x";
      key = "<leader>ar";
      action = "<cmd>CopilotChatRefactor<cr>";
    }
    {
      mode = "x";
      key = "<leader>ab";
      action = "<cmd>CopilotChatDebug<cr>";
    }
    {
      mode = "x";
      key = "<leader>al";
      action = "<cmd>CopilotChatAddLogging<cr>";
    }
    {
      mode = "x";
      key = "<leader>as";
      action = "<cmd>CopilotChatSecurityReview<cr>";
    }
    {
      mode = "x";
      key = "<leader>ax";
      action = "<cmd>CopilotChatExplainError<cr>";
    }
    {
      mode = "x";
      key = "<leader>ac";
      action = "<cmd>CopilotChatChat<cr>";
    }
  ];
}
