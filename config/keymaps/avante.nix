[
  {
    mode = "n";
    key = "<leader>ac";
    action = "<cmd>AvanteChat<CR>";
    options = {
      desc = "AI Chat";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>ae";
    action = "<cmd>AvanteEdit<CR>";
    options = {
      desc = "AI Edit";
      silent = true;
    };
  }
  {
    mode = ["n" "v"];
    key = "<leader>aq";
    action = "<cmd>AvanteAsk<CR>";
    options = {
      desc = "AI Ask";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>at";
    action = "<cmd>AvanteToggle<CR>";
    options = {
      desc = "Toggle AI";
      silent = true;
    };
  }
]
