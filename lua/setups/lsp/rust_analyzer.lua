assert(os.execute('rust-analyzer --version') == 0, 'required rust-analyzer')
require 'lspconfig'.rust_analyzer.setup {}
