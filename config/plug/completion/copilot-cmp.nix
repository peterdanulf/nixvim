{
  plugins.copilot-cmp = {
    enable = true;
  };
  plugins.copilot-lua = {
    enable = true;
    suggestion = {enabled = true;};
    panel = {enabled = false;};
  };

  extraConfigLua = ''
    require("copilot").setup({
      suggestion = { enabled = true },
      panel = { enabled = false },
    })
  '';
}
