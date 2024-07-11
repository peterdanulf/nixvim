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
      prompts = {
        Explain = {
          prompt = 'Explain the selected code in detail.',
        },
        Fix = {
          prompt = 'Fix any issues in the selected code.',
        },
        Docs = {
          prompt = 'Generate documentation for the selected code.',
        },
        Commit = {
          prompt = 'Write a commit message for the selected changes.',
        },
        Optimize = {
          prompt = 'Optimize the selected code for better performance and readability.',
        },
        Translate = {
          prompt = 'Translate the selected code to another programming language.',
        },
        GenerateTests = {
          prompt = 'Generate unit tests for the selected code.',
        },
        Refactor = {
          prompt = 'Refactor the selected code to improve structure and maintainability.',
        },
        Debug = {
          prompt = 'Identify and fix bugs in the selected code.',
        },
        AddLogging = {
          prompt = 'Add logging statements to the selected code to help with debugging.',
        },
        SecurityReview = {
          prompt = 'Review the selected code for potential security vulnerabilities.',
        },
        ExplainError = {
          prompt = 'Explain the error message related to the selected code.',
        },
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
  ];
}
