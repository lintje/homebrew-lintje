class Lintje < Formula
  desc "An opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.6.0"
  if Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.6.0/aarch64-apple-darwin.tar.gz"
    sha256 "3fe7346eb2f34114b31b953c7925232838637e8a144704a6efbb59fecd332a57"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.6.0/x86_64-apple-darwin.tar.gz"
    sha256 "2dc4ce6faeb3092a3e9f168498ce3daff35af49791916c3c12c957837c590f63"
  end
  license "MIT"

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
