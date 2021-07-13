class Lintje < Formula
  desc "An opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.3.0"
  if Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.3.0/aarch64-apple-darwin.tar.gz"
    sha256 "802f42a339d7993b642131f664bb1253126f151d3bc6183bf31f4d72920f50b0"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.3.0/x86_64-apple-darwin.tar.gz"
    sha256 "b1274012c44349a6c9aac336ff2aac57c73e58c6cc9025f9357919fdc4d1606a"
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
