# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1513"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/5af50cc3be5eece90a6c1206ad5daa53b67fafcd/smedja-darwin-arm64.tar.gz"
      sha256 "45b5042d050748da88f03f644fe6114bc3b27c51fa28662ecca7b01d9758328a"
    end
    on_intel do
      url "https://console.smedja.app/dl/5af50cc3be5eece90a6c1206ad5daa53b67fafcd/smedja-darwin-amd64.tar.gz"
      sha256 "6116dfb8274c8923da230babbf4313863231d3c99cba1e404f744120162f24c9"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/5af50cc3be5eece90a6c1206ad5daa53b67fafcd/smedja-linux-arm64.tar.gz"
      sha256 "5377df2e1c9bbeecbd5b6513b856dd1513e73d416de0779bac74d23cd85360c9"
    end
    on_intel do
      url "https://console.smedja.app/dl/5af50cc3be5eece90a6c1206ad5daa53b67fafcd/smedja-linux-amd64.tar.gz"
      sha256 "2d0a9365179b6c16a519e9058633f8f9b2449eb2445028c29fc7f86967cac4bc"
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
