# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1511"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c5f32e6c68b3ab738dc36a85ea47c28096fef2e9/smedja-darwin-arm64.tar.gz"
      sha256 "17454086283d37b8b065690addf85c854564863e33e15bbd7e25fe9389a307fb"
    end
    on_intel do
      url "https://console.smedja.app/dl/c5f32e6c68b3ab738dc36a85ea47c28096fef2e9/smedja-darwin-amd64.tar.gz"
      sha256 "09de2ce6da9a935febcd5deadd4d7e61b8d516d254d0a17d47ae88c70f02c6c2"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c5f32e6c68b3ab738dc36a85ea47c28096fef2e9/smedja-linux-arm64.tar.gz"
      sha256 "73eab0718b06744bc060c7e3abc8b475d1e30e8d95c392dff6c55d1bf2af5015"
    end
    on_intel do
      url "https://console.smedja.app/dl/c5f32e6c68b3ab738dc36a85ea47c28096fef2e9/smedja-linux-amd64.tar.gz"
      sha256 "1f79a5e6309afe03861b576c8e6c201c2f230b54d3b85c738855c7afc70c03d1"
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
