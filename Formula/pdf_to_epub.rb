class PdfToEpub < Formula
  desc "Convert PDF to EPUB with a TUI, keeping images in their original position"
  homepage "https://github.com/valdeirsapara/baby-Conversor-de-pdf-to-Epub"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/valdeirsapara/baby-Conversor-de-pdf-to-Epub/releases/download/v#{version}/pdf_to_epub-aarch64-apple-darwin.tar.gz"
      sha256 "5ad0c1d2253a948e1edcfbcdc09cd4b479eaecc08e37d002f535998b7ef8a542"
    end
    on_intel do
      odie "pdf_to_epub ainda não publica binário para macOS Intel; construa a partir do código-fonte."
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/valdeirsapara/baby-Conversor-de-pdf-to-Epub/releases/download/v#{version}/pdf_to_epub-x86_64-unknown-linux-musl.tar.gz"
      sha256 "26453ae36915425a8bdcc093ec2c01ee7d9243358d412121ea795b9350baa650"
    end
  end

  def install
    bin.install "pdf_to_epub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf_to_epub --version")
  end
end
