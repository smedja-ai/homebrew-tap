# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1261"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/8b8a2fcc104ed9beebe15f8340041882b38e5b06/smedja-darwin-arm64.tar.gz"
      sha256 "9a002dc9876e663f8c4d6cd2bf661889c352f1f2ebde493505adb5b24c3b7c2e"
    end
    on_intel do
      url "https://console.smedja.app/dl/8b8a2fcc104ed9beebe15f8340041882b38e5b06/smedja-darwin-amd64.tar.gz"
      sha256 "8fcb521a0c6929e8d0719a1c833626da113ff9c4e61b92fc446762dccb25f831"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/8b8a2fcc104ed9beebe15f8340041882b38e5b06/smedja-linux-arm64.tar.gz"
      sha256 "7f9167862fb69bdeb6f2ae980efc1c9fbbf83681dd0384730b4f03e52022eb85"
    end
    on_intel do
      url "https://console.smedja.app/dl/8b8a2fcc104ed9beebe15f8340041882b38e5b06/smedja-linux-amd64.tar.gz"
      sha256 "b1936f611e912bf3a744043212c28aa06ce0f10d8c53db92c70f32e3aef35eba"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
