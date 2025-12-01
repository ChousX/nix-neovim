{ pkgs, ... }:
{
  plugins.telescope.enable = true;
  
  extraPlugins = with pkgs.vimPlugins; [
    plenary-nvim
    (pkgs.vimUtils.buildVimPlugin {
      name = "bevy_inspector.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "lommix";
        repo = "bevy_inspector.nvim";
        rev = "master";
        hash = "sha256-sQO1xh6p8KkWVyRCYIiivlvkYXCob7UKd/C8WIFFL9A=";
      };
      # Disable the require check since dependencies aren't available at build time
      doCheck = false;
      meta.broken = false;
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
