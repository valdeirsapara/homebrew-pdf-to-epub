# homebrew-pdf-to-epub

Tap do Homebrew para o [pdf_to_epub](https://github.com/valdeirsapara/baby-Conversor-de-pdf-to-Epub) —
conversor de PDF para EPUB com TUI.

O arquivo `Formula/pdf_to_epub.rb` deste repositório é gerado e atualizado
automaticamente pelo workflow de release do repositório principal a cada nova
tag publicada. Não edite manualmente — qualquer alteração é sobrescrita no
próximo release.

## Instalação

```bash
brew tap valdeirsapara/pdf-to-epub
brew trust valdeirsapara/pdf-to-epub
brew install pdf_to_epub
```

O `brew trust` é pedido uma única vez: o Homebrew se recusa a carregar fórmulas de taps
de terceiros até que você declare que confia neles. Para confiar só nesta fórmula, use
`brew trust --formula valdeirsapara/pdf-to-epub/pdf_to_epub`.
