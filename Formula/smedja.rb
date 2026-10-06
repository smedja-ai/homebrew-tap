# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.950"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/4d88745a8c9e076fad6c5ee1d421e04488b72385/smedja-darwin-arm64.tar.gz"
      sha256 "34a747a43581885e7fe63f0ce5cc88d3e5f16088c614af7c2a3b0287dbca6dee"
    end
    on_intel do
      url "https://console.smedja.app/dl/4d88745a8c9e076fad6c5ee1d421e04488b72385/smedja-darwin-amd64.tar.gz"
      sha256 "fd4f2dec71b4e29ce28bb30bdb65cf8d3ca66748e123df518d03a5c0f87c5cd1"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/4d88745a8c9e076fad6c5ee1d421e04488b72385/smedja-linux-arm64.tar.gz"
      sha256 "13920ac29b8b5c7d8ec0ee09c4fbc07e7bc28fff65ea38cd7c0623670956c61b"
    end
    on_intel do
      url "https://console.smedja.app/dl/4d88745a8c9e076fad6c5ee1d421e04488b72385/smedja-linux-amd64.tar.gz"
      sha256 "519ff0cc27d01edb7afd96f4d0fcb286aa2665498e4e0131128eaa0145e59449"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
