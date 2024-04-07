{
  plugins.alpha = let
    nixFlake = [
      "           ▄ ▄                   "
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     "
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     "
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     "
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  "
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄"
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █"
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █"
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    "
    ];
  in {
    enable = true;
    layout = [
      {
        type = "padding";
        val = 4;
      }
      {
        opts = {
          hl = "AlphaHeader";
          position = "center";
        };
        type = "text";
        val = nixFlake;
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "group";
        val = let
          mkButton = shortcut: cmd: val: hl: {
            type = "button";
            inherit val;
            opts = {
              inherit hl shortcut;
              keymap = [
                "n"
                shortcut
                cmd
                {}
              ];
              position = "center";
              cursor = 0;
              width = 33;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          };
        in [
          (mkButton "f" "<CMD>lua require('telescope.builtin').find_files({hidden = true})<CR>" "Find File" "Operator")
          (mkButton "n" ":ene <BAR> startinsert <CR>" "New file" "Operator")
          (mkButton "r" ":Telescope oldfiles<CR>" "Recent files" "Operator")
          (mkButton "g" ":Telescope live_grep<CR>" "Find text" "Operator")
          (mkButton "q" "<CMD>qa<CR>" "Quit Neovim" "String")
        ];
      }
    ];
  };
}
