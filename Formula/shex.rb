class Shex < Formula
  desc "OPAQUE-authenticated, end-to-end encrypted Redis remote shell"
  homepage "https://github.com/morphym/shex"
  version "2.0.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/morphym/shex/releases/download/v2.0.3/shex-2.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "e8a4be35dceeec0aaf0ec349aee67559de191f7ba81fffa2167d990050baa77c"
    else
      url "https://github.com/morphym/shex/releases/download/v2.0.3/shex-2.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "0d7c5873944d0666adff8674efbe010fe5671161a2b0e0001e7ed0992567cfff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/morphym/shex/releases/download/v2.0.3/shex-2.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "518b617b6fda02909c72c3661e3a33efa839ca14e383b879292003f5bf00af45"
    else
      url "https://github.com/morphym/shex/releases/download/v2.0.3/shex-2.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eca14ef5931335959c75c508c98eddad997562e360c09a8fd96d87a2a4905239"
    end
  end

  def install
    bin.install "shex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shex --version")
  end
end
