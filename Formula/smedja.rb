# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1295"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/476d7913f18129d527c649b23319437cb5167466/smedja-darwin-arm64.tar.gz"
      sha256 "3f863db02846a9b600e88e8610ea27146a51f5e6c364fea598ab06926bdec3b2"
    end
    on_intel do
      url "https://console.smedja.app/dl/476d7913f18129d527c649b23319437cb5167466/smedja-darwin-amd64.tar.gz"
      sha256 "396ca6318e0247fb1311da4f86c56f583652ee4e580738602b61dd44667fe49c"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/476d7913f18129d527c649b23319437cb5167466/smedja-linux-arm64.tar.gz"
      sha256 "dd21fb27708a8ad29c4dade0fbeb481cc459b61137c23a2e8ed5c25ac996682d"
    end
    on_intel do
      url "https://console.smedja.app/dl/476d7913f18129d527c649b23319437cb5167466/smedja-linux-amd64.tar.gz"
      sha256 "922d7775caba675727d7fde89312ca1e93c471c77518f9cc5e6dcd993a5d63ca"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
