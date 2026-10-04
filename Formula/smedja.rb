# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.897"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/b19682da7d924acd3ff8b03c91ac3a22e45eccb0/smedja-darwin-arm64.tar.gz"
      sha256 "4d11cb6298459ed93d3a3d91f25e17a8c3d76195d68c2dc2475840889cb7d967"
    end
    on_intel do
      url "https://console.smedja.app/dl/b19682da7d924acd3ff8b03c91ac3a22e45eccb0/smedja-darwin-amd64.tar.gz"
      sha256 "71de36faf27795ecd7200efdc98ed1669ab093ba54c44461b5b5782d9150d7f3"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/b19682da7d924acd3ff8b03c91ac3a22e45eccb0/smedja-linux-arm64.tar.gz"
      sha256 "cc42440230d2cca83eccf42eb171a291ecc82af09a5a6ae86764c8fa507c3526"
    end
    on_intel do
      url "https://console.smedja.app/dl/b19682da7d924acd3ff8b03c91ac3a22e45eccb0/smedja-linux-amd64.tar.gz"
      sha256 "791c6ce507a699406ebfd70d4178ca8fbd41d5b6e5ab9dfefa4869379bcdb930"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
