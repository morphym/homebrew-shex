class Shex < Formula
  desc "OPAQUE-authenticated, end-to-end encrypted Redis remote shell"
  homepage "https://github.com/morphym/shex"
  version "2.0.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/morphym/shex/releases/download/v2.0.2/shex-2.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "1ad9b91138f77118462f127dd81fb8e00aaf47d2262d25305b0cdb190476b67b"
    else
      url "https://github.com/morphym/shex/releases/download/v2.0.2/shex-2.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "c91ace43679de52cf78e36b895cb4b543b8beb334c7726ce48a47b3852f4b4c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/morphym/shex/releases/download/v2.0.2/shex-2.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb86cff35e48f32342627aa02a961b19f761b763a79cc10592a3d351af19ebe0"
    else
      url "https://github.com/morphym/shex/releases/download/v2.0.2/shex-2.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b98462467d7f6fa7ee77c7c735cebe62a4a75bbf301ac6d44912e82e6899f29"
    end
  end

  def install
    bin.install Dir["shex-*/shex"].first
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shex --version")
  end
end
