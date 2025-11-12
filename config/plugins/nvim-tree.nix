{
plugins.nvim-tree = {
  enable = true;
  openOnSetup = false;
  autoClose = false;
  settings = {
    filters = {
      dotfiles = false;  # Show hidden files
      };
      view = {
        width = 30;
        side = "right";
      };
      git = {
        enable = true;
        ignore = false;
      };
    };
  };
}
