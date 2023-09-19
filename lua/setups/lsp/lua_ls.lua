assert(os.execute('lua-language-server --version') == 0, 'required lua-language-server')
require 'lspconfig'.lua_ls.setup {}
