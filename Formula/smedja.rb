# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1127"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/f4c7ef60aa1475a14acf1a8e101783a6606e4116/smedja-darwin-arm64.tar.gz"
      sha256 "3904e7d7afbe83992759e1a002592ee1055ad9919706c2d1c458f92eab68c1a1"
    end
    on_intel do
      url "https://console.smedja.app/dl/f4c7ef60aa1475a14acf1a8e101783a6606e4116/smedja-darwin-amd64.tar.gz"
      sha256 "f744f77d2072433a60d642c039f191b7012b3f0e11cceb7f0452dbdd8f227d73"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/f4c7ef60aa1475a14acf1a8e101783a6606e4116/smedja-linux-arm64.tar.gz"
      sha256 "c702ef01ed828db6b511b50dc9d053b2af17c63f76f18faf243b00ebf10693fd"
    end
    on_intel do
      url "https://console.smedja.app/dl/f4c7ef60aa1475a14acf1a8e101783a6606e4116/smedja-linux-amd64.tar.gz"
      sha256 "d9b766221a87c6e1e3d279b03b56e754ef8d86240add06262fae16a8ad84fc52"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
