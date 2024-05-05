{
  globals.mapleader = " ";

  keymaps = [
    # General maps
    {
      mode = "n";
      key = "<leader>-";
      action = "<C-W>s";
      options = {
        desc = "Split window below";
      };
    }
    {
      mode = "n";
      key = "<leader>|";
      action = "<C-W>v";
      options = {
        desc = "Split window right";
      };
    }
    {
      mode = "n";
      key = "<leader>b";
      action = "+buffers";
    }
    {
      mode = "n";
      key = "<leader>t";
      action = "+tagging";
    }
    {
      mode = "n";
      key = "<leader>z";
      action = "+zen";
    }
    {
      mode = "n";
      key = "<leader>d";
      action = "+diagnostics";
    }
    {
      mode = "n";
      key = "<leader>dd";
      action = "<cmd>Telescope diagnostics<CR>";
    }
    {
      mode = "n";
      key = "<leader>dL";
      action = "<CMD>TroubleToggle loclist<CR>";
      options = {
        desc = "Location list (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>dQ";
      action = "<CMD>TroubleToggle quickfix<CR>";
      options = {
        desc = "Quickfix List (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>dx";
      action = "<CMD>TroubleToggle document_diagnostics<CR>";
      options = {
        desc = "Document Diagnostics (Trouble)";
      };
    }
    {
      mode = "n";
      key = "<leader>dX";
      action = "<CMD>TroubleToggle workspace_diagnostics<CR>";
      options = {
        desc = "Workspace Diagnostics (Trouble)";
      };
    }
    {
      mode = "i";
      key = "jk";
      action = "<ESC>";
      options = {
        silent = true;
        desc = "jk to escape";
      };
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "<CMD> Grapple toggle <CR>";
      options = {desc = "Grapple Toggle tag";};
    }

    {
      mode = "n";
      key = "<leader>tT";
      action = "<CMD> Grapple toggle_tags <CR>";
      options = {desc = "Grapple Toggle tags";};
    }

    {
      mode = "n";
      key = "<leader>ts";
      action = "<CMD> Grapple toggle_scopes <CR>";
      options = {desc = "Grapple Toggle scopes";};
    }

    {
      mode = "n";
      key = "<leader>tj";
      action = "<CMD> Grapple cycle forward <CR>";
      options = {desc = "Grapple Cycle forward";};
    }

    {
      mode = "n";
      key = "<leader>tJ";
      action = "<CMD> Grapple cycle backward <CR>";
      options = {desc = "Grapple Cycle backward";};
    }

    {
      mode = "n";
      key = "<leader>1";
      action = "<CMD> Grapple select index=1<CR>";
      options = {desc = "Grapple Select 1";};
    }

    {
      mode = "n";
      key = "<leader>2";
      action = "<CMD> Grapple select index=2<CR>";
      options = {desc = "Grapple Select 2";};
    }

    {
      mode = "n";
      key = "<leader>3";
      action = "<CMD> Grapple select index=3<CR>";
      options = {desc = "Grapple Select 3";};
    }

    {
      mode = "n";
      key = "<leader>4";
      action = "<CMD> Grapple select index=4<CR>";
      options = {desc = "Grapple Select 4";};
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "+search";
    }
    {
      mode = "n";
      key = "<leader>sr";
      action = ":Spectre<cr>";
      options = {
        desc = "Replace in Files (Spectre)";
      };
    }
    {
      mode = "n";
      key = "<leader>ss";
      action = "<cmd>Telescope lsp_document_symbols<cr>";
      options = {
        desc = "Goto symbol";
      };
    }
    {
      mode = "n";
      key = "<leader>sS";
      action = "<cmd>Telescope lsp_workspace_symbols<cr>";
      options = {
        desc = "Goto symbol (Workspace)";
      };
    }
    {
      mode = "n";
      key = "<leader>sR";
      action = "<cmd>Telescope resume<cr>";
      options = {
        desc = "Resume";
      };
    }
    {
      mode = "n";
      key = "<leader>/";
      action = "<cmd>Telescope live_grep<cr>";
      options = {
        desc = "Live Grep";
      };
    }
    {
      mode = "n";
      key = "<leader>cc";
      action = ":CopilotChat<cr>";
      options = {
        desc = "Copilot Chat";
      };
    }
    {
      mode = "n";
      key = "<leader>,";
      action = "<cmd>Telescope buffers<cr>";
      options = {
        desc = "Buffers";
      };
    }
    {
      mode = "n";
      key = "<leader>fo";
      action = "<cmd>Telescope oldfiles<cr>";
      options = {
        desc = "Old Files";
      };
    }
    {
      mode = "n";
      key = "<leader><leader>";
      action = "<cmd>Telescope fd<cr>";
      options = {
        desc = "Find Files (root dir)";
      };
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      options = {
        desc = "Explorer NeoTree (Root Dir)";
      };
    }
    {
      mode = "n";
      key = "<leader>E";
      action = "<cmd>Neotree reveal_force_cwd<CR>";
      options = {
        desc = "Explorer NeoTree (cwd)";
      };
    }
    {
      mode = "n";
      key = "<leader>ge";
      action = "<cmd>Telescope git_status<cr>";
      options = {
        desc = "Git Explorer";
      };
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope git_files<cr>";
      options = {
        desc = "Find Files (git files)";
      };
    }
    {
      mode = "n";
      key = "<leader>f";
      action = "+find/file";
    }

    {
      mode = "n";
      key = "<leader>q";
      action = "+quit/session";
    }

    {
      mode = ["n" "v"];
      key = "<leader>g";
      action = "+git";
    }

    {
      mode = "n";
      key = "<leader>u";
      action = "+ui";
    }

    {
      mode = "n";
      key = "<leader>w";
      action = "+windows";
    }

    {
      mode = "n";
      key = "<leader><Tab>";
      action = "+tab";
    }

    {
      mode = ["n" "v"];
      key = "<leader>c";
      action = "+code";
    }

    # Tabs
    {
      mode = "n";
      key = "<leader><tab><tab>";
      action = "<cmd>tabnew<cr>";
      options = {
        silent = true;
        desc = "New Tab";
      };
    }

    {
      mode = "n";
      key = "<leader><tab>d";
      action = "<cmd>tabclose<cr>";
      options = {
        silent = true;
        desc = "Close tab";
      };
    }

    # Windows
    {
      mode = "n";
      key = "<leader>ww";
      action = "<C-W>p";
      options = {
        silent = true;
        desc = "Other window";
      };
    }

    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = {
        silent = true;
        desc = "Delete window";
      };
    }

    {
      mode = "n";
      key = "<leader>w-";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }

    {
      mode = "n";
      key = "<leader>w|";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }

    {
      mode = "n";
      key = "<C-h>";
      action = "<C-W>h";
      options = {
        silent = true;
        desc = "Move to window left";
      };
    }

    {
      mode = "n";
      key = "<C-l>";
      action = "<C-W>l";
      options = {
        silent = true;
        desc = "Move to window right";
      };
    }

    {
      mode = "n";
      key = "<C-k>";
      action = "<C-W>k";
      options = {
        silent = true;
        desc = "Move to window over";
      };
    }

    {
      mode = "n";
      key = "<C-j>";
      action = "<C-W>j";
      options = {
        silent = true;
        desc = "Move to window bellow";
      };
    }

    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }
    {
      mode = "n";
      key = "<Esc>";
      action = ":noh<cr>";
      options = {
        silent = true;
        desc = "Clear search highlight";
      };
    }
    # Quit/Session
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>quitall<cr><esc>";
      options = {
        silent = true;
        desc = "Quit all";
      };
    }

    {
      mode = "n";
      key = "<leader>ul";
      action = ":lua ToggleLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uL";
      action = ":lua ToggleRelativeLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Relative Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uw";
      action = ":lua ToggleWrap()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Wrap";
      };
    }

    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {desc = "Use move command when line is highlighted ";};
    }

    {
      mode = "v";
      key = "K";
      action = ":m '>-2<CR>gv=gv";
      options = {desc = "Use move command when line is highlighted ";};
    }

    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        desc = "Allow cursor to stay in the same place after appending to current line ";
      };
    }

    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options = {desc = "Allow search terms to stay in the middle ";};
    }

    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options = {desc = "Allow search terms to stay in the middle ";};
    }

    # Paste stuff without saving the deleted word into the buffer
    {
      mode = "x";
      key = "<leader>p";
      action = ''"_dP'';
      options = {desc = "Deletes to void register and paste over";};
    }

    # Delete to void register
    {
      mode = ["n" "v"];
      key = "<leader>D";
      action = ''"_d'';
      options = {desc = "Delete to void register";};
    }

    # <C-c> instead of pressing esc just because
    {
      mode = "i";
      key = "<C-c>";
      action = "<Esc>";
    }

    {
      mode = "n";
      key = "<leader>zz";
      action = "<CMD>ZenMode<CR>";
      options = {desc = "Toggle writting mode";};
    }
  ];
  extraConfigLua = ''
    function ToggleLineNumber()
    if vim.wo.number then
      vim.wo.number = false
    else
      vim.wo.number = true
        vim.wo.relativenumber = false
        end
        end

        function ToggleRelativeLineNumber()
        if vim.wo.relativenumber then
          vim.wo.relativenumber = false
        else
          vim.wo.relativenumber = true
            vim.wo.number = false
            end
            end

            function ToggleWrap()
            vim.wo.wrap = not vim.wo.wrap
            end

    local isLspDiagnosticsVisible = true
    vim.keymap.set("n", "<leader>cx", function()
        isLspDiagnosticsVisible = not isLspDiagnosticsVisible
        vim.diagnostic.config({
            virtual_text = isLspDiagnosticsVisible,
            underline = isLspDiagnosticsVisible
        }) end, {desc = "Toggle LSP Diagnostics"})
  '';
}
