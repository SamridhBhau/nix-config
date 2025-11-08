{
  plugins= {
    luasnip.enable = true;

    lspkind = {
      enable = true;

      cmp = {
        enable = true;
      };
    };


    cmp = {
      enable = true;
      autoEnableSources = true;


      settings = {
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        mapping = {
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert })";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-j>" = "cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })";
          "<C-k>" = "cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })";
          "<C-e>" = "cmp.mapping.close()";

          "<Tab>" = "cmp.mapping(function(fallback)
            local luasnip = require('luasnip')
            if cmp.visible() then
              cmp.select_next_item()
                elseif luasnip.locally_jumpable(1) then
                luasnip.jump(1)
            else
              fallback()
                end
                end, { \"i\", \"s\" })";

          "<S-Tab>" = "cmp.mapping(function(fallback)
            local luasnip = require('luasnip');
          if cmp.visible() then
            cmp.select_prev_item()
              elseif luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
          else
            fallback()
              end
              end, { 'i', 's' })";
        };

        sources = [
        {
          name = "path";
        }
        {
          name = "nvim_lsp";
        }
        {
          name = "buffer";
        }
        {
          name = "luasnip";
        }
        ];

      };
    };
  };

}
