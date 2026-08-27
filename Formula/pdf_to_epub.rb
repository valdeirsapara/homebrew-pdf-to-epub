class PdfToEpub < Formula
  desc "Conversor de PDF para EPUB com TUI, preservando a posição das imagens"
  homepage "https://github.com/valdeirsapara/baby-Conversor-de-pdf-to-Epub"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/valdeirsapara/baby-Conversor-de-pdf-to-Epub/releases/download/v0.1.0/pdf_to_epub-aarch64-apple-darwin.tar.gz"
      sha256 "2d58d533ff15d50a489d62f3b2aee46fcc187461c5074ffa6ef42394d877ab71"
    end
    on_intel do
      odie "pdf_to_epub ainda não publica binário para macOS Intel; construa a partir do código-fonte."
    end
  end

  on_linux do
    url "https://github.com/valdeirsapara/baby-Conversor-de-pdf-to-Epub/releases/download/v0.1.0/pdf_to_epub-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3033337924de6d6d558dca8415a891f4e146b955ba724cd057f982e798c0c666"
  end

  def install
    staging_dir = Dir["pdf_to_epub-*"].first
    bin.install "#{staging_dir}/pdf_to_epub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf_to_epub --version")
  end
end
