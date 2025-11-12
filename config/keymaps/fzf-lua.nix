[
  {
    mode = "n";
    key = "<leader>ff";
    action.__raw = "function() require('fzf-lua').files() end";
    options = {
      desc = "FZF Files";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fg";
    action.__raw = "function() require('fzf-lua').live_grep() end";
    options = {
      desc = "FZF Live Grep";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fb";
    action.__raw = "function() require('fzf-lua').buffers() end";
    options = {
      desc = "FZF Buffers";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fh";
    action.__raw = "function() require('fzf-lua').help_tags() end";
    options = {
      desc = "FZF Help Tags";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fx";
    action.__raw = "function() require('fzf-lua').diagnostics_document() end";
    options = {
      desc = "FZF Diagnostics Document";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fX";
    action.__raw = "function() require('fzf-lua').diagnostics_workspace() end";
    options = {
      desc = "FZF Diagnostics Workspace";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fs";
    action.__raw = "function() require('fzf-lua').lsp_document_symbols() end";
    options = {
      desc = "FZF Document Symbols";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>fS";
    action.__raw = "function() require('fzf-lua').lsp_workspace_symbols() end";
    options = {
      desc = "FZF Workspace Symbols";
      silent = true;
    };
  }
]
