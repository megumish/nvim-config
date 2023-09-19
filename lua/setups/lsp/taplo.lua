assert(os.execute('taplo lsp --help') == 0, 'required taplo-lsp')
require 'lspconfig'.taplo.setup {}
