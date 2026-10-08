# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1024"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/87fa08e0d01e24e109d648232a6229971eddffc4/smedja-darwin-arm64.tar.gz"
      sha256 "45de7ff0fb9b9d3c2ba3ef013e68aa94174b19b83d6d23165a964a3ff04e2145"
    end
    on_intel do
      url "https://console.smedja.app/dl/87fa08e0d01e24e109d648232a6229971eddffc4/smedja-darwin-amd64.tar.gz"
      sha256 "785a6e9cc0824b34662607cab3dbfb716742ddf0db422cd6e84d62ab5d921a41"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/87fa08e0d01e24e109d648232a6229971eddffc4/smedja-linux-arm64.tar.gz"
      sha256 "436f1ea423d28dafd6d9de245ed086d099591addf89d6995152cfda31b2c15cb"
    end
    on_intel do
      url "https://console.smedja.app/dl/87fa08e0d01e24e109d648232a6229971eddffc4/smedja-linux-amd64.tar.gz"
      sha256 "fe29256589fb6edf827bf79aed3cc06ef224302152fdda9440a7c854518add77"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
