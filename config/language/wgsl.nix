{ pkgs, ... }:
{
  plugins = {
    lsp.servers.wgsl_analyzer = {
      enable = true;
      cmd = [ "${pkgs.wgsl-analyzer}/bin/wgsl-analyzer" ];
    };
    treesitter = {
      grammarPackages = [
        pkgs.tree-sitter-grammars.tree-sitter-wgsl
      ];
    };
  };
  
  extraConfigLua = ''
    vim.filetype.add({
      extension = {
        wgsl = "wgsl"
      }
    })

     -- Register both parsers with treesitter
    vim.treesitter.language.register('wgsl', 'wgsl')
    vim.treesitter.language.register('bevy_wgsl', 'wgsl')
  '';
}
