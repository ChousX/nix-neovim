[
  {
    mode = "n";
    key = "<leader>cf";
    action.__raw = "function() require('conform').format({ lsp_fallback = true }) end";
    options = {
      desc = "Format buffer";
      silent = true;
    };
  }
]
