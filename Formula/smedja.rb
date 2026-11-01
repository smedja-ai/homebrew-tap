# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1571"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/cb4473b9c889ab78d57d4bd1845285098c5f346f/smedja-darwin-arm64.tar.gz"
      sha256 "fce51e477bd2dae09cf3672471dac3cfdb2950b0213c729c5730e7b873072ab7"
    end
    on_intel do
      url "https://console.smedja.app/dl/cb4473b9c889ab78d57d4bd1845285098c5f346f/smedja-darwin-amd64.tar.gz"
      sha256 "e93bb3b504807e873d2f641dc06d943e5f24eb1a9a5390de81bd76afc7be5446"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/cb4473b9c889ab78d57d4bd1845285098c5f346f/smedja-linux-arm64.tar.gz"
      sha256 "2d73902f8dc59c654fce36d0f03f1faef0af86bf4980f5d27099de2724e8126e"
    end
    on_intel do
      url "https://console.smedja.app/dl/cb4473b9c889ab78d57d4bd1845285098c5f346f/smedja-linux-amd64.tar.gz"
      sha256 "0beba9039f13b12ab61d3007168778030c1f6355199861537ff04bcd0c1f4882"
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
