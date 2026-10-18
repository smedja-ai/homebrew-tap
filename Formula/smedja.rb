# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1372"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/3fc0827dc9f717c0a8f11d7309e2a4b3020b8c2e/smedja-darwin-arm64.tar.gz"
      sha256 "63ec7372ae34f868b2a80a164b22efb6cb90dd2be5515648c43e612252aa32e5"
    end
    on_intel do
      url "https://console.smedja.app/dl/3fc0827dc9f717c0a8f11d7309e2a4b3020b8c2e/smedja-darwin-amd64.tar.gz"
      sha256 "0d8b22096a1b20d66053b95d7cb5a30e426dea0059115010447a5c06e1c8d5ef"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/3fc0827dc9f717c0a8f11d7309e2a4b3020b8c2e/smedja-linux-arm64.tar.gz"
      sha256 "fcb38fca74e5ba4fe5de9f99cfb8d88092024e9504f92511e71164d357930598"
    end
    on_intel do
      url "https://console.smedja.app/dl/3fc0827dc9f717c0a8f11d7309e2a4b3020b8c2e/smedja-linux-amd64.tar.gz"
      sha256 "841456325fea29afdfe4dd1c03e9e4616e5ac68853b07e98e083545557434236"
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
