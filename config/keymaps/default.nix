{
  globals.mapleader = " ";
  keymaps = 
    (import ./format.nix) ++ 
    (import ./oil.nix) ++ 
    [ ];
}
