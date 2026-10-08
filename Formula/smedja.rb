# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1022"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/fd3f33004bc13539f0a82a0119c41f19ae4d9092/smedja-darwin-arm64.tar.gz"
      sha256 "a30fbea5cad7b7285287a7a5ce89ab926c85811c85553deb84234f6d2bf7560d"
    end
    on_intel do
      url "https://console.smedja.app/dl/fd3f33004bc13539f0a82a0119c41f19ae4d9092/smedja-darwin-amd64.tar.gz"
      sha256 "7db1e1942dc85c3c6853864c754f71e57da8b4efa173d247f80173b60a1d7bbd"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/fd3f33004bc13539f0a82a0119c41f19ae4d9092/smedja-linux-arm64.tar.gz"
      sha256 "c9039b422ff5d7ec072f0b58e0b740c6e6cfc6d1cf2be71002a538743bfeb11e"
    end
    on_intel do
      url "https://console.smedja.app/dl/fd3f33004bc13539f0a82a0119c41f19ae4d9092/smedja-linux-amd64.tar.gz"
      sha256 "e06c17c8d8316ffaf9cb964a1d4fc9c9995f0bf2e95a6b1f1a672e4647a4b6f4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
