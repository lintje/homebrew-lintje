class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://lintje.dev"
  version "0.8.0"
  license "MIT"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lintje/lintje/releases/download/v0.8.0/aarch64-apple-darwin.tar.gz"
    sha256 "feb1ff3d5829d987d3bbc2f71af7f4a94246bc59bfc97619f1e6f44c860d9260"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lintje/lintje/releases/download/v0.8.0/x86_64-apple-darwin.tar.gz"
    sha256 "c934da2cb45275070b474bb8f88e7631ea2fbacb10429842b8359087ccf970f5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.8.0/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "4113d36da30a9ef493a65311b7907e1249c5cc8231596dc96541f11f1a86cde7"
  else
    url "https://github.com/lintje/lintje/releases/download/v0.8.0/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c93ad073bf0685672b2f0df750c3a268fd16e1d1e3540bafdc52df5c8b7474bb"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
