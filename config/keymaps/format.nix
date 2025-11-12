{
  keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>lua vim.lsp.buf.format()<CR>";
      option = {
        desc = "Format buffer";
        silet = true;
      };
    }
  ];
}
