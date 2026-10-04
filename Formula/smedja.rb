# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.881"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/08dc7f6eb9714738360b7950482b35a60a8cc66e/smedja-darwin-arm64.tar.gz"
      sha256 "f2cd5772d8c6c345d19e45de0c5ac035b2461d29224e921e8d6603ea62b2c0ca"
    end
    on_intel do
      url "https://console.smedja.app/dl/08dc7f6eb9714738360b7950482b35a60a8cc66e/smedja-darwin-amd64.tar.gz"
      sha256 "25a96236857d393a707f03d57188cc66a93873f6b63a09545219db5e36107089"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/08dc7f6eb9714738360b7950482b35a60a8cc66e/smedja-linux-arm64.tar.gz"
      sha256 "fbd1d34265007441ff29c567a9a1a437f280f888388f9f9f96b30cc82cffeb70"
    end
    on_intel do
      url "https://console.smedja.app/dl/08dc7f6eb9714738360b7950482b35a60a8cc66e/smedja-linux-amd64.tar.gz"
      sha256 "379a196651c7a29a9c4fbcbb0da484d2ec50ef0926189a8e9648bdc9a4562fe8"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
