class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://lintje.dev"
  version "0.10.0"
  license "MIT"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lintje/lintje/releases/download/v0.10.0/aarch64-apple-darwin.tar.gz"
    sha256 "13c0e362fbbbd5ca6dd4b4d6fe5ee75cf243c1cdd98051e245c6672958f233c1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lintje/lintje/releases/download/v0.10.0/x86_64-apple-darwin.tar.gz"
    sha256 "a774f0fc10fef3c7f5bd1d9b60c7a2c98b80fa811a79de6740b757ea5c43fb21"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.10.0/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8b3478e228debf1e28bc2412c7c7c4df056c0f2c3205e9e7c6308e25493f4d97"
  else
    url "https://github.com/lintje/lintje/releases/download/v0.10.0/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "853a46023124e2ab9e112ab9250d0220ed7a6ee14e15da851159c0f7a7404c21"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
