# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1392"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/b57aa301812e586bca8c5da698806f58d2a5878b/smedja-darwin-arm64.tar.gz"
      sha256 "3e3a574b9f8fadf17f98d92ffebf5b25de2660ccf2cdf778d965e435759dcf3b"
    end
    on_intel do
      url "https://console.smedja.app/dl/b57aa301812e586bca8c5da698806f58d2a5878b/smedja-darwin-amd64.tar.gz"
      sha256 "e331018e8452f6d3e91a745b341dde21ad15d873ede6cdce5668a6cef2849cbf"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/b57aa301812e586bca8c5da698806f58d2a5878b/smedja-linux-arm64.tar.gz"
      sha256 "6327e52e34e959c8d5dfe91e9e13717978e2c1db97f2104304f61fe18d8f1d05"
    end
    on_intel do
      url "https://console.smedja.app/dl/b57aa301812e586bca8c5da698806f58d2a5878b/smedja-linux-amd64.tar.gz"
      sha256 "62d92891ae39b961e2ef8e75aa5fa910aa30dcc2eec6e0c8531f6ac5c552d49a"
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
