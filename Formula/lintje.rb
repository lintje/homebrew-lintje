class Lintje < Formula
  desc "An opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.3.0"
  if Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.3.1/aarch64-apple-darwin.tar.gz"
    sha256 "72a7f41cc3da903b85ab95ed1d777c86ed695b98b67e2b5281dddb936c5aa267"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.3.1/x86_64-apple-darwin.tar.gz"
    sha256 "aa308f8d9441970f02ff331eec2c0f0cb28bb4f7c565ac2dbdcb58e0050a50c7"
  end
  license "MIT"

  bottle :unneeded

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
