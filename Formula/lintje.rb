class Lintje < Formula
  desc "An opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.4.1"
  if Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.4.1/aarch64-apple-darwin.tar.gz"
    sha256 "5c485d3b650f0ebbfc82b7402e63437ebf2ecb5c92f44a22c0b82736afbd1cb1"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.4.1/x86_64-apple-darwin.tar.gz"
    sha256 "5e4b262f7a9c070effe011ffb8bc64a1b118dbaafed0fc7afe6bb986ab0afa11"
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
