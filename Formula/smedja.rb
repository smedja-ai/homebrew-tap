# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1105"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/20792480b2199faea3cc7794664f9e297928fcc5/smedja-darwin-arm64.tar.gz"
      sha256 "beb321c8676e142593456bc2bea44ff2f5c2e5fc6d59c2afb52a70925b9497bd"
    end
    on_intel do
      url "https://console.smedja.app/dl/20792480b2199faea3cc7794664f9e297928fcc5/smedja-darwin-amd64.tar.gz"
      sha256 "51fe7ad0cf337dffed30bb2c6d156934497d646cb8e3f0d4851cd36ac86cb81f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/20792480b2199faea3cc7794664f9e297928fcc5/smedja-linux-arm64.tar.gz"
      sha256 "911665297fa5f4a74482629c5c1536598e50bcb7a576218073639935c9382543"
    end
    on_intel do
      url "https://console.smedja.app/dl/20792480b2199faea3cc7794664f9e297928fcc5/smedja-linux-amd64.tar.gz"
      sha256 "28ae36b4c4b13dfb9b3e400dc27ff881bad5b86d2ab0bd52d012f9ffc8f36e7e"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
