# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1500"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/5f9a46fc219b99696dea84b3b87c62d5f5186e22/smedja-darwin-arm64.tar.gz"
      sha256 "6a71aabc6404359d09dcfab9592a05ec1644644e386fda3d84626fd229204545"
    end
    on_intel do
      url "https://console.smedja.app/dl/5f9a46fc219b99696dea84b3b87c62d5f5186e22/smedja-darwin-amd64.tar.gz"
      sha256 "175bc3e977e747a7cfc68c229b27951f3454c7e55ad560a757e7e4f6ef86a46d"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/5f9a46fc219b99696dea84b3b87c62d5f5186e22/smedja-linux-arm64.tar.gz"
      sha256 "70161f8f5cd68700d9c5400ab26bfb0594cdd00346da35d17e91909d0ee5ed95"
    end
    on_intel do
      url "https://console.smedja.app/dl/5f9a46fc219b99696dea84b3b87c62d5f5186e22/smedja-linux-amd64.tar.gz"
      sha256 "addc8165783d4ae0d51079800194565bbc501f6c49e256e0d4f135858704574d"
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
