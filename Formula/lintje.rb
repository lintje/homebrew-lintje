class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://github.com/tombruijn/lintje"
  version "0.6.1"
  license "MIT"
  revision 1
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.6.1/aarch64-apple-darwin.tar.gz"
    sha256 "ecd7735f8fd54f59436b791485ad7c3e3d0ed95f451c019844bc7480a8bb34ae"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tombruijn/lintje/releases/download/v0.6.1/x86_64-apple-darwin.tar.gz"
    sha256 "4c9f5bde3b7799491ebe5c4cc3499e8a3c8e704a623c9bc0e96a92e1fc5403d4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/v0.6.1/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "7970eec24f10c2700abed9ad8bf3da7f5894307fac2158ced35a8de1a0373c2f"
  else
    url "https://github.com/tombruijn/lintje/releases/download/v0.6.1/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "78d99329fd4c4e7a739db8a19104d9e079bc07486f1718c1c3acb50c58ecb48c"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
