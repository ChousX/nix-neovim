[
  {
    mode = "n";
    key = "<leader>bia";
    action = "<cmd>BevyInspect<CR>";
    options = {
      desc = "Lists all entities";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>bin";
    action = "<cmd>BevyInspectNamed<CR>";
    options = {
      desc = "List all named entities";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>biq";
    action = "<cmd>BevyInspectQuery<CR>";
    options = {
      desc = "Query a single component";
      silent = true;
    };
  }
]
