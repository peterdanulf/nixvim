{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    notifyOnError = true;
    formattersByFt = {
      liquidsoap = ["liquidsoap-prettier"];
      html = [["biome" "prettier"]];
      css = [["biome" "prettier"]];
      javascript = [["biome" "prettier"]];
      javascriptreact = [["biome" "prettier"]];
      typescript = [["biome" "prettier"]];
      typescriptreact = [["biome" "prettier"]];
      python = ["black"];
      lua = ["stylua"];
      nix = ["alejandra"];
      markdown = [["biome" "prettier"]];
      yaml = ["yamllint" "yamlfmt"];
    };
  };
}
