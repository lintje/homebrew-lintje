class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://lintje.dev"
  version "0.7.1"
  license "MIT"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.7.1/aarch64-apple-darwin.tar.gz"
    sha256 "8ebdff786daaacfc749114d70d90f36489f02d72d2670ab5882dfa3c3525c917"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tombruijn/lintje/releases/download/v0.7.1/x86_64-apple-darwin.tar.gz"
    sha256 "0cd94e8ac9453b643631601e8f1369494a050c265b9d7165710fd03613513129"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.7.1/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3ef0bcb1bb4d5df45dd4e4e9f48005415415577b8ec38e13e22f5ef100774a2d"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.7.1/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "992046aa86318ac889e06431d8e1f23befb6e214b36dc82bb54e2797b55c89e8"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
