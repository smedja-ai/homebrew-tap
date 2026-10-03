# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.850"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c1e15b5eb4ffd1e17d2d7c6d63cc9eba171a0abf/smedja-darwin-arm64.tar.gz"
      sha256 "12fafc685ffae1a850691132de744c97274231bfd4f3e985d1a7d6ad87314085"
    end
    on_intel do
      url "https://console.smedja.app/dl/c1e15b5eb4ffd1e17d2d7c6d63cc9eba171a0abf/smedja-darwin-amd64.tar.gz"
      sha256 "50d7689d750093989d3061f7a43947bb51793e6ed3c1a578d0f9c20d92ab92a3"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c1e15b5eb4ffd1e17d2d7c6d63cc9eba171a0abf/smedja-linux-arm64.tar.gz"
      sha256 "5f632e7ef869eb2d8291a0ba30a586f53b336f89069d1c1e5c200d70fda767f9"
    end
    on_intel do
      url "https://console.smedja.app/dl/c1e15b5eb4ffd1e17d2d7c6d63cc9eba171a0abf/smedja-linux-amd64.tar.gz"
      sha256 "4920fef082daeeb9153f03c2f469c749edfd14c45ab332ddc19d26a0cdf10b5e"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
