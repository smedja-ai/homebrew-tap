# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.830"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/02d5d76c1f51e4a0e0aa2a7d2cd967c0488e3a6d/smedja-darwin-arm64.tar.gz"
      sha256 "b8a7d2b739356a444d06bbc906a1ef668f1c1f57d075b2eb36312db21f361466"
    end
    on_intel do
      url "https://console.smedja.app/dl/02d5d76c1f51e4a0e0aa2a7d2cd967c0488e3a6d/smedja-darwin-amd64.tar.gz"
      sha256 "c157a125f478747d69be020956c06a151aa8825f5b4d7579c9447bb5073c5695"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/02d5d76c1f51e4a0e0aa2a7d2cd967c0488e3a6d/smedja-linux-arm64.tar.gz"
      sha256 "9b3b7b636ff16434e992b65f98e6cc577c296604637c1fb067f3f831a69c06ef"
    end
    on_intel do
      url "https://console.smedja.app/dl/02d5d76c1f51e4a0e0aa2a7d2cd967c0488e3a6d/smedja-linux-amd64.tar.gz"
      sha256 "caba0c8fb95f144b626f89c024ed270bb63b36dfe73f044cf82cf3e0fd2744cb"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
