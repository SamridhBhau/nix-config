{lib,...}:
{

  plugins = {
    lsp = {
      enable = true;

      keymaps = {
        diagnostic = {
          "<leader>j" = "goto_next";
          "<leader>k" = "goto_prev";
        };

        lspBuf = {
          K = "hover";
          gD = "references";
          gd = "definition";
          gi = "implementation";
          gt = "type_definition";
        };
      };

      servers = {
        nil_ls.enable = true;
        basedpyright.enable = true;
        lua_ls = {
          enable = true;

          settings = {
            completion = {
              enable = true;
              callSnippet = "Both";

            };
            diagnostics.enable = false;
          };
        };

        clangd = {
          enable = true;

        };
      };
    };

  };


}
