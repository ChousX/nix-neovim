{
  globals.mapleader = " ";
  keymaps = 
    (import ./format.nix) ++ 
    (import ./nvim-tree.nix) ++ 
    [ ];
}
