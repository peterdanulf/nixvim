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
    local function extract_code_block(response)
      local start_pos = string.find(response, "```")
      local end_pos = string.find(response, "```", start_pos + 3)
      if start_pos and end_pos then
        return string.sub(response, start_pos + 3, end_pos - 1)
      end
      return nil
    end

    local function apply_changes_to_buffer(response, start_line, end_line)
      print("DEBUG: Response object: " .. vim.inspect(response))

      local code_block = extract_code_block(response)
      if code_block then
        local lines = vim.split(code_block, "\n")
        vim.api.nvim_buf_set_lines(0, start_line, end_line + 1, false, lines)
        vim.notify("Changes applied successfully.", vim.log.levels.INFO)
      else
        vim.notify("Error: Unable to apply changes. Invalid response.", vim.log.levels.ERROR)
        print("Invalid response detected: " .. vim.inspect(response))
      end
    end

    require("CopilotChat").setup {
      model = 'gpt-4',
      debug = true,
      temperature = 0.1,
      prompts = {
        Explain = {
          prompt = 'Explain the selected code in detail.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        Fix = {
          prompt = 'Fix any issues in the selected code.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        Docs = {
          prompt = 'Generate documentation for the selected code.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        Commit = {
          prompt = 'Write a commit message for the selected changes.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        Optimize = {
          prompt = 'Optimize the selected code for better performance and readability.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        Translate = {
          prompt = 'Translate the selected code to another programming language.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        GenerateTests = {
          prompt = 'Generate unit tests for the selected code.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        Refactor = {
          prompt = 'Refactor the selected code to improve structure and maintainability.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        Debug = {
          prompt = 'Identify and fix bugs in the selected code.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        AddLogging = {
          prompt = 'Add logging statements to the selected code to help with debugging.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        SecurityReview = {
          prompt = 'Review the selected code for potential security vulnerabilities.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
        },
        ExplainError = {
          prompt = 'Explain the error message related to the selected code.',
          callback = function(response)
            local start_line = vim.fn.line("'<") - 1
            local end_line = vim.fn.line("'>") - 1
            apply_changes_to_buffer(response, start_line, end_line)
          end,
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
