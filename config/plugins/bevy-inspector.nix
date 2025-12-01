{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "bevy_inspector.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "lommix";
        repo = "bevy_inspector.nvim";
        rev = "main"; # or specify a commit hash for stability
        hash = ""; # Run once to get the hash, nix will tell you the correct one
      };
    })
  ];

  extraConfigLua = ''
    require("bevy_inspector").setup({
      -- optional custom url
      -- url = "http://127.0.0.1:15702",
      -- optional name struct, when bevy moves this again
      -- name_struct = "bevy_ecs::name::Name",
    })
  '';
}
