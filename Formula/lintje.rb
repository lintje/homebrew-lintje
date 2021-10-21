class Lintje < Formula
  desc "An opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.5.0"
  if Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.5.0/aarch64-apple-darwin.tar.gz"
    sha256 "19edfc1d67964bebbf54f306a70e325901fb86ff4f2476046f2cbe205993bd9d"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.5.0/x86_64-apple-darwin.tar.gz"
    sha256 "ae28afd199527db39f9f6676e25bd0148888d59f1f9f01023b4499f427e66f15"
  end
  license "MIT"

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
