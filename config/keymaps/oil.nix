[
  {
    mode = "n";
    key = "<leader>e";
    action.__raw = ''
      function()
        local oil_bufnr = nil
        for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
          if vim.bo[bufnr].filetype == "oil" then
            oil_bufnr = bufnr
            break
          end
        end
        
        if oil_bufnr then
          local oil_winid = vim.fn.bufwinid(oil_bufnr)
          if oil_winid ~= -1 then
            vim.api.nvim_win_close(oil_winid, false)
          else
            vim.cmd("vsplit")
            vim.api.nvim_set_current_buf(oil_bufnr)
          end
        else
          vim.cmd("vsplit")
          require("oil").open()
        end
      end
    '';
    options = {
      desc = "Toggle Oil Explorer";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>m";
    action.__raw = ''
      function()
        for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
          if vim.bo[bufnr].filetype == "oil" then
            local oil_winid = vim.fn.bufwinid(bufnr)
            if oil_winid ~= -1 then
              vim.api.nvim_set_current_win(oil_winid)
              return
            end
          end
        end
        vim.cmd("vsplit")
        require("oil").open()
      end
    '';
    options = {
      desc = "Focus on Oil Explorer";
      silent = true;
    };
  }
]
