# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1551"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6e64248af6258be586a1d1be91569c1b8c6bdde4/smedja-darwin-arm64.tar.gz"
      sha256 "f45827026dfc47e20b5f8cd7ed96be96b1123e636bc21e6f1ea9f55dd1553313"
    end
    on_intel do
      url "https://console.smedja.app/dl/6e64248af6258be586a1d1be91569c1b8c6bdde4/smedja-darwin-amd64.tar.gz"
      sha256 "5c5a508391d8f1d1aec8bd6fad54e3badedd97791c8a4326b1ac85fcfa579924"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6e64248af6258be586a1d1be91569c1b8c6bdde4/smedja-linux-arm64.tar.gz"
      sha256 "5a285dbe1bf68813f4ca219b1969f1f8c6df66fcbb5377274b16b915f7735563"
    end
    on_intel do
      url "https://console.smedja.app/dl/6e64248af6258be586a1d1be91569c1b8c6bdde4/smedja-linux-amd64.tar.gz"
      sha256 "a49a5d46b56bb9a3b18f7d49bb3b1fa332194137f831ad5014b8d14fa20f0e06"
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
