{
  pkgs,
  ...
}:
{
    plugins.luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
      fromVscode = [
        {
          lazyLoad = true;
          paths = "${pkgs.vimPlugins.friendly-snippets}";
        }
        {
          lazyLoad = true;
          paths = ./luasnips/bevy.code-snippets;
        }
      ];
    };
    plugins.cmp_luasnip.enable = true;
}
