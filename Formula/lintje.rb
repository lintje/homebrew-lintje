class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://lintje.dev"
  package_version = "v0.11.1"
  version package_version
  license "MIT"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/aarch64-apple-darwin.tar.gz"
    sha256 "e0a706b4d05f1ee035dd97dbea95f4d96c41ec2775e96aa97d3af628e654f97f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/x86_64-apple-darwin.tar.gz"
    sha256 "04688836f5acd294f1f0d88a7b504516e7e7cd183e7679401ff4f01768ea43bb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/#{package_version}/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "8597af37b08eeec9e8c7b8566e9d47cbb10dce4dcf606ed4c2fa80f43c55a07c"
  else
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d8f0e5096e881fe73ba1ef92d334e7d62d36e1e65928e9c242cfba2f66eb190a"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
