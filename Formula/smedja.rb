# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1510"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/13d3b6582f2d0c9ac5645739a3422cd0666f0830/smedja-darwin-arm64.tar.gz"
      sha256 "2b25c3288b6bf03d72f27488236aa0b130aab021a454f984db6688f2eb44fc5d"
    end
    on_intel do
      url "https://console.smedja.app/dl/13d3b6582f2d0c9ac5645739a3422cd0666f0830/smedja-darwin-amd64.tar.gz"
      sha256 "b6dd457fa5ce4e7051ca2c85e7a8d515edfc29d4624651e1d2ad5a8cd2fef6f5"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/13d3b6582f2d0c9ac5645739a3422cd0666f0830/smedja-linux-arm64.tar.gz"
      sha256 "cf47e0c88eeacbc05c1f5dfc403e9b89ca699f44b564dafa8ad1af954014faae"
    end
    on_intel do
      url "https://console.smedja.app/dl/13d3b6582f2d0c9ac5645739a3422cd0666f0830/smedja-linux-amd64.tar.gz"
      sha256 "a0b4d11c5c2db1c5f40342757615adbe26e1ac453a4616ff4b5b97572cdf30bf"
    end
  end

  def install
    bin.install "smedja"
  end

  # SME-347: the binary says the release this formula is (D947.1).
  test do
    assert_match "smedja #{version} (", shell_output("#{bin}/smedja --version")
  end
end
