# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.944"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6180551d11aa0788a4b68060b68f69abbb9bc8a7/smedja-darwin-arm64.tar.gz"
      sha256 "d40b0d52718b8bca78fa8e6069248db6735ec76982192b728e48d5f698544beb"
    end
    on_intel do
      url "https://console.smedja.app/dl/6180551d11aa0788a4b68060b68f69abbb9bc8a7/smedja-darwin-amd64.tar.gz"
      sha256 "726ef68d191e96585a4994089a04861630f87611065c361b4fd14802b0427114"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6180551d11aa0788a4b68060b68f69abbb9bc8a7/smedja-linux-arm64.tar.gz"
      sha256 "90c0eb32c662ac74db32d18714cdd7c9dac6a047ce84afc5026286d72cd561ab"
    end
    on_intel do
      url "https://console.smedja.app/dl/6180551d11aa0788a4b68060b68f69abbb9bc8a7/smedja-linux-amd64.tar.gz"
      sha256 "9b032eaae25aa07b6b32e350de267a769512e14e6eced0dbd3569fcca4956c58"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
