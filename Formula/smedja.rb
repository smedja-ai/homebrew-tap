# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1425"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/502ccf256e9b7e9c604c5a790b30f0782fb52ab7/smedja-darwin-arm64.tar.gz"
      sha256 "c158599ab1011196e803601d6352a401472ce58879bcc1b8d04d01e1748e5799"
    end
    on_intel do
      url "https://console.smedja.app/dl/502ccf256e9b7e9c604c5a790b30f0782fb52ab7/smedja-darwin-amd64.tar.gz"
      sha256 "07c34fe2efc8817b3e4b306356fd87844bfa832da3b09214a9c8f3802952833a"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/502ccf256e9b7e9c604c5a790b30f0782fb52ab7/smedja-linux-arm64.tar.gz"
      sha256 "ea4b45f5941c75e7052f15b0895f95103459c87d4681e2c94a043c80c1164e5c"
    end
    on_intel do
      url "https://console.smedja.app/dl/502ccf256e9b7e9c604c5a790b30f0782fb52ab7/smedja-linux-amd64.tar.gz"
      sha256 "5ce87f02d1c3824a7fecf15c8489743d0af16535cca35d016574f12edf218353"
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
