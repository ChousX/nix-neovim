{ pkgs, ... }:
{
  plugins.avante = {
    enable = true;
    settings = {
      provider = "claude";
      auto_suggestions_provider = "claude";
      claude = {
        endpoint = "https://api.anthropic.com";
        model = "claude-sonnet-4-20250514";
        max_tokens = 8000;
        temperature = 0;
      };
      behaviour = {
        auto_suggestions = false;
        auto_set_highlight_group = true;
        auto_set_keymaps = true;
        auto_apply_diff_after_generation = false;
        support_paste_from_clipboard = false;
      };
      mappings = {
        diff = {
          ours = "ao";
          theirs = "at";
          all_theirs = "aA";
          both = "ab";
          cursor = "ac";
          next = "aj";
          prev = "ak";
        };
        suggestion = {
          accept = "<CR>";
          next = "<C-j>";
          prev = "<C-k>";
          dismiss = "<C-e>";
        };
        jump = {
          next = "<C-j>";
          prev = "<C-k>";
        };
        submit = {
          normal = "<CR>";
          insert = "<C-s>";
        };
      };
      windows = {
        position = "right";
        wrap = true;
        width = 30;
        sidebar_header = {
          align = "center";
          rounded = true;
        };
      };
      highlights = {
        diff = {
          current = "DiffText";
          incoming = "DiffAdd";
        };
      };
    };
  };
}
