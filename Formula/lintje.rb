class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://lintje.dev"
  package_version = "v0.11.0"
  version package_version
  license "MIT"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/aarch64-apple-darwin.tar.gz"
    sha256 "6abdb824d55f0293787fe0f16f0fcfa7885aaa7ceae7b801e9e4699b16449c97"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/x86_64-apple-darwin.tar.gz"
    sha256 "3adc7a3244fc206afa86df1df2dadaaec8635784418a779ae8739514a6640587"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/#{package_version}/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d6e5146b444c756fb970d485d5bc2f3c3dbb639dc18f63661c816532c9ff1fab"
  else
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3d2c49413f1408e1d3fa58f952f15c97a6c3120f909427c16f10169237f9e23c"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
