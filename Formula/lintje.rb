class Lintje < Formula
  desc "Opinionated linter for Git"
  homepage "https://lintje.dev"
  package_version = "v0.11.3"
  version package_version
  license "MIT"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/aarch64-apple-darwin.tar.gz"
    sha256 "4129c1d4c236dd1a318ec699c68cb6911b6bdc561651ca1fa356d122923f4fb5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/x86_64-apple-darwin.tar.gz"
    sha256 "92b4bb385ff5ab691ee58d7203ba15284b93e22b23a584cfda7013c6a3d3b7b8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/tombruijn/lintje/releases/download/#{package_version}/aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2b1265b9c26e527950418b39f077036398fc8bb22cde63a8e9395d423e57ddf5"
  else
    url "https://github.com/lintje/lintje/releases/download/#{package_version}/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "052e81d54afa0b91e9cbf86c1e40540379632353637756b7f7b03e920810e636"
  end

  def install
    bin.install "lintje"
  end

  test do
    system "#{bin}/lintje", "--version"
  end
end
