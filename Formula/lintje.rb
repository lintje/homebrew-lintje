class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://lintje.dev"
  version "0.9.0"
  license "MIT"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lintje/lintje/releases/download/v0.9.0/aarch64-apple-darwin.tar.gz"
    sha256 "18a06f298a856a1fe3162406bf15c357daf431aadf681da6aa56dfbf4d385c04"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lintje/lintje/releases/download/v0.9.0/x86_64-apple-darwin.tar.gz"
    sha256 "3e4e546730cfc69cfc9779f0de9923551485779169de7658378cf0975cf6ac91"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.9.0/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "352ed6ed4ee9c88404ab1cda33da49281521bab160b4e44c85077310580cab14"
  else
    url "https://github.com/lintje/lintje/releases/download/v0.9.0/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c067c1da07cd9f431c2f9b07428b48f91e359bf3a3f051ad272032a260ab856a"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
