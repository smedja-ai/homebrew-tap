# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1452"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/579e66269492f8df50416a55e4e39a73eb5a4bc1/smedja-darwin-arm64.tar.gz"
      sha256 "53b554e291c81c5b04f982134430638dc360074cf5bf7994655ac2876f717b37"
    end
    on_intel do
      url "https://console.smedja.app/dl/579e66269492f8df50416a55e4e39a73eb5a4bc1/smedja-darwin-amd64.tar.gz"
      sha256 "f5fb786c3a3662b139e21e8749aab605a3c4c646edbb6b9e851606dd3fe91134"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/579e66269492f8df50416a55e4e39a73eb5a4bc1/smedja-linux-arm64.tar.gz"
      sha256 "0a1cbc972eb2d3a2765a907559704a2763178ee0002ba2e5cfa88d98a291aa23"
    end
    on_intel do
      url "https://console.smedja.app/dl/579e66269492f8df50416a55e4e39a73eb5a4bc1/smedja-linux-amd64.tar.gz"
      sha256 "94605e2bdea4b601369bf8e9b2ec3e8b9f4643b748eba15c80583fcc9b5aaf0a"
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
