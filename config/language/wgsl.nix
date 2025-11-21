{ pkgs, ... }:
{
  plugins = {
    lsp.servers.wgsl_analyzer = {
      enable = true;
    };
    treesitter = {
      grammarPackages = [
        pkgs.tree-sitter-grammars.tree-sitter-wgsl
      ];
    };
  };
  
  # Add filetype detection for .wgsl files
  extraConfigLua = ''
    vim.filetype.add({
      extension = {
        wgsl = "wgsl"
      }
    })
  '';
}
