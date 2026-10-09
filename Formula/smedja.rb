# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1036"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/102acd31fbfb7ebadda7f9986197622af94f620f/smedja-darwin-arm64.tar.gz"
      sha256 "19527cf0aa11a1f3b11f36c827335ca9b90790940ece22e1499420a0b6f4b247"
    end
    on_intel do
      url "https://console.smedja.app/dl/102acd31fbfb7ebadda7f9986197622af94f620f/smedja-darwin-amd64.tar.gz"
      sha256 "346988b791501ac8ca49620d024d75393818912d7f4d8d63b52e8a033b2b2e82"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/102acd31fbfb7ebadda7f9986197622af94f620f/smedja-linux-arm64.tar.gz"
      sha256 "802b68dca3514229c4fb15b29988a48d23d3ab2395363aee5b9e7af479c897fc"
    end
    on_intel do
      url "https://console.smedja.app/dl/102acd31fbfb7ebadda7f9986197622af94f620f/smedja-linux-amd64.tar.gz"
      sha256 "b398c58a5568502f2241366c9ad358ad9888609dc5fb0fe24edab67bed264a2e"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
