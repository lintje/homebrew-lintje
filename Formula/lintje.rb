class Lintje < Formula
  desc "An opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.1.0"
  if Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.1.0/aarch64-apple-darwin.tar.gz"
    sha256 "76256b1e4ad49e2683563941bb8a0b7ace1ee3f84c85459c3073f6d6c6d1a532"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.1.0/x86_64-apple-darwin.tar.gz"
    sha256 "91d2f056eef53ab8b74d41725cdf8c6510331137913b1ea805cb71c20f982986"
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
