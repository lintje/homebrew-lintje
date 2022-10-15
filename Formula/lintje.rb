class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://lintje.dev"
  package_version = "v0.11.2"
  version package_version
  license "MIT"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/aarch64-apple-darwin.tar.gz"
    sha256 "5760f9a120c468f32c286317f38e6eb843fc19077e931fd4c7ad3e3675177281"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/x86_64-apple-darwin.tar.gz"
    sha256 "f97e12958ce22e323678c4c517b0d736be0d6e86416cf5130c77bb0d6820644e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/#{package_version}/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d304e8779ddd8d2ed0be11c6a8cafbb225f6d1f128bd6125fd3ab8efda0fd678"
  else
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b4f9af043283ad39a9e2c25105fafe65db2df5abe497145caffb9e05ab28445c"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
