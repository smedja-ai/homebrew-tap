# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1507"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6e0434d499f463af0a6bf2895dbdafacb6b01d6f/smedja-darwin-arm64.tar.gz"
      sha256 "2ed27ac5b93e90a53f95a83a384e92fd5523bccf87bbf65d98c25256c7641f99"
    end
    on_intel do
      url "https://console.smedja.app/dl/6e0434d499f463af0a6bf2895dbdafacb6b01d6f/smedja-darwin-amd64.tar.gz"
      sha256 "534ecb44437eb3e2d8ee660823d140fcc4c22206ac4a138d326ecbc3ec2c7f01"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6e0434d499f463af0a6bf2895dbdafacb6b01d6f/smedja-linux-arm64.tar.gz"
      sha256 "f75a4934f22520bde13c767ea51f8d4df58f84ad555932431125fe2166ba6d49"
    end
    on_intel do
      url "https://console.smedja.app/dl/6e0434d499f463af0a6bf2895dbdafacb6b01d6f/smedja-linux-amd64.tar.gz"
      sha256 "f0b52496a4379e9968f09a604a338e5d707e48c4d8ee164bd651710621347c4a"
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
