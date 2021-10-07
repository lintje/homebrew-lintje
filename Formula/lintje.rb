class Lintje < Formula
  desc "An opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.3.1"
  if Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.4.0/aarch64-apple-darwin.tar.gz"
    sha256 "5272185a1b6e46877f3de402bf449226b167555a13d949ded1b6057bc39e4b3e"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.4.0/x86_64-apple-darwin.tar.gz"
    sha256 "bcd93ef9ce07840d4128ce0658cc21af594576495a316e040c505cc2446d4fa5"
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
