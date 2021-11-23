class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.6.1"
  if Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.6.1/aarch64-apple-darwin.tar.gz"
    sha256 "ecd7735f8fd54f59436b791485ad7c3e3d0ed95f451c019844bc7480a8bb34ae"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.6.1/x86_64-apple-darwin.tar.gz"
    sha256 "4c9f5bde3b7799491ebe5c4cc3499e8a3c8e704a623c9bc0e96a92e1fc5403d4"
  end
  license "MIT"

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
