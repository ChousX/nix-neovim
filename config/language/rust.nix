{
  plugins = {
    lsp = {
      servers.rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
    };
    conform-nvim.settings.formatters_by_ft = {
      rust = [ "rustfmt" ];
    };
    #rustaceanvim = {
      #enable = true;
      #settings = {
        #tools.enable_clippy = true;
        #server = {
          #default_settings = {
            #inlayHints.lifetimeElisionHints.enable = "always";
            #rust-analyzer = {
              #cargo = { allFeatures = true; };
              #check = { command = "clippy"; };
            #};
          #};
        #};
      #};
    #};
  };
}
