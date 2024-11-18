{
  plugins = {
    lsp = {
      enable = true;
      servers = {
	ts_ls.enable = true;
        lua_ls.enable = true;
        rust_analyzer = { 
	  enable = true; 
	  installCargo = true;
	  installRustc = true;
	};
	nil_ls.enable = true;
      };
    };
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
      	sources = [
          {
	          name = "nvim_lsp";
	          keywordLength = 3;
	        }
          {name = "path";}
          {name = "buffer";}
        ];
	    mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
          "<C-l>" = ''
            cmp.mapping(function()
              if luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
              end
            end, { 'i', 's' })
          '';
          "<C-h>" = ''
            cmp.mapping(function()
              if luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
              end
            end, { 'i', 's' })
          '';
        };
      };
    };
    cmp-treesitter.enable = true;
    conform-nvim = {
        enable = true;
        settings = {
          format_on_save = {
            lsp_fallback = "fallback";
            timeout_ms = 500;
          };
          notify_on_error = true;

          formatters_by_ft = {
            css = ["prettier"];
            html = ["prettier"];
            json = ["prettier"];
            just = ["just"];
            lua = ["stylua"];
            markdown = ["prettier"];
            nix = ["alejandra"];
            ruby = ["rubyfmt"];
            terraform = ["tofu_fmt"];
            tf = ["tofu_fmt"];
            yaml = ["yamlfmt"];
          };
        };
      };
  };
}