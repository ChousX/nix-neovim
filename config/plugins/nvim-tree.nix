{
plugins.nvim-tree = {
  enable = true;
  openOnSetup = false;
  autoClose = false;
  view = {
    width = 30;
    side = "right";
  };
  filters = {
    dotfiles = false;  # Show hidden files
  };
  git = {
    enable = true;
    ignore = false;
  };
};
}
