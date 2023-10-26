return {
  settings = {
    clangd = {
      arguments = {
        "--background-index",
        "--all-scopes-completion",
        "--completion-style=detailed",
        "--header-insertion=never",
        "--pch-storage=disk",
        "--log=error",
        "--j=4",
        "--compile-commands-dir=build"
      }
    }
  }
}
