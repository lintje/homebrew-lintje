class Lintje < Formula
  desc "An opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.2.0"
  if Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.2.0/aarch64-apple-darwin.tar.gz"
    sha256 "9fcbe2e4dd463a10faed15a0412f5735045a3dacb0a8dc47de0242dd7f813823"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.2.0/x86_64-apple-darwin.tar.gz"
    sha256 "612cc1d75c3a2dc24b59d8506b01c1fdf1f4f1b62523bca9d4c5abc0c7cc4e7d"
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
