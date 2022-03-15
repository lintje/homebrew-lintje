class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://lintje.dev"
  version "0.7.0"
  license "MIT"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.7.0/aarch64-apple-darwin.tar.gz"
    sha256 "ca09201886bd12c92dd1646662693966cb783b9577105b34acabeb1b9f5a8b50"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tombruijn/lintje/releases/download/v0.7.0/x86_64-apple-darwin.tar.gz"
    sha256 "3f17f1c8b3adef164d4c1814585f382827531310de0b076a6b928972ee548a70"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.7.0/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d3eece81637492cf588336ad4ca95328c64a8c941a2b0fa2efb22fe5a9cff54c"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.7.0/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "263583ac6abdcb098493a9dc399aed36b6e83f62b56b3065aac340cef832b76a"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
