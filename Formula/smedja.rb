# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1114"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/4155baf7e9c3d1e5a60aa71fe3d0892b6a2558c7/smedja-darwin-arm64.tar.gz"
      sha256 "2eece976839a9ab4f7b6d076a3839790c59ed64685e2cd52a51400d7b8e0c00a"
    end
    on_intel do
      url "https://console.smedja.app/dl/4155baf7e9c3d1e5a60aa71fe3d0892b6a2558c7/smedja-darwin-amd64.tar.gz"
      sha256 "58e717c846bfcf1d54978c92b7d832b98ffb3ae9bc3869078156ae875285532d"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/4155baf7e9c3d1e5a60aa71fe3d0892b6a2558c7/smedja-linux-arm64.tar.gz"
      sha256 "dfe0f7915825e5b15784a07fffa3708f08b2fe81a8b87f08462884ae418eb53b"
    end
    on_intel do
      url "https://console.smedja.app/dl/4155baf7e9c3d1e5a60aa71fe3d0892b6a2558c7/smedja-linux-amd64.tar.gz"
      sha256 "e2696bda6904fa3cc09f0ca637be82776276cab0e09e733310afd1884eecd7d4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
