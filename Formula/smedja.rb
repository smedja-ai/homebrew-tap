# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1029"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/aee280f34dc94a417d86cc45bead52ca735556fc/smedja-darwin-arm64.tar.gz"
      sha256 "5cc02c392411c79ec88acccf0d9eb2f229c6bd9e7d15028a59340730d650aff0"
    end
    on_intel do
      url "https://console.smedja.app/dl/aee280f34dc94a417d86cc45bead52ca735556fc/smedja-darwin-amd64.tar.gz"
      sha256 "30911e6269750206831759d7a8630dc957e407a2f17c243c818fbbf98aa220c9"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/aee280f34dc94a417d86cc45bead52ca735556fc/smedja-linux-arm64.tar.gz"
      sha256 "d102a64ccc694573aeb72aeddf9d8b7330e79dc034caeb32e4ad066664547b53"
    end
    on_intel do
      url "https://console.smedja.app/dl/aee280f34dc94a417d86cc45bead52ca735556fc/smedja-linux-amd64.tar.gz"
      sha256 "2275946fadc620c062870ae95a70f011d9402f9a97d6a78973221c446d181708"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
