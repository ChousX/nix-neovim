{
  plugins = {
    lsp = {
      servers.rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
        settings = {
          cargo.extraArgs = [ "-j" "2" ];
          numThreads = 2;
        };
      };
    };
    conform-nvim.settings.formatters_by_ft = {
      rust = [ "rustfmt" ];
    };
  };
}
