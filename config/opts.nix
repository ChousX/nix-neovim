{
    colorschemes.kanagawa.enable = true;

    clipboard = {
      providers.wl-copy.enable = true;
      register = "unnamedplus";
    };

    globalOpts = {
      # Line Numbers
      number = true;         # Show line numbers
      relativenumber = true; # Show relative line numbers

      # Tab
      tabstop = 2;
      shiftwidth = 2;        
      softtabstop = 0;
      expandtab = true;
      autoindent = true; # Do clever autoindenting

      # Search
      ignorecase = true;
      smartcase = true;

      # Always show the signcolumn, otherwise text would be shifted when displaying error icons
      signcolumn = "yes";

      updatetime = 100; # Faster completion
      hidden = true; # Keep closed buffer open in the background
      swapfile = false; # Disable the swap file
      modeline = true; # Tags such as 'vim:ft=sh'
      modelines = 100; # Sets the type of modelines
      incsearch = true; # Incremental search: show match for partly typed search command
      fileencoding = "utf-8"; # File-content encoding for the current buffer
      termguicolors = true; # Enables 24-bit RGB color in the |TUI|
    };

    plugins.transparent.enable = true;
}
