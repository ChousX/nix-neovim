{lib, config, ...}: {
  # Import all your configuration modules here
  imports = [ 
    ./bufferline.nix
    ./snippets
    ./language
    ./plugins
    ./opts.nix
  ];
}
