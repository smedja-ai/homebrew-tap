# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.859"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/9161844926059ba7f4749ace0ea8905a8e08eebb/smedja-darwin-arm64.tar.gz"
      sha256 "3b2535bbc6bacdbab9ee05017090c5395b0a3558dd05d05d1153d05450a05f1e"
    end
    on_intel do
      url "https://console.smedja.app/dl/9161844926059ba7f4749ace0ea8905a8e08eebb/smedja-darwin-amd64.tar.gz"
      sha256 "5bd734ec48bbde035a15c0651a7ee1e633950af548b6cb86ff19a6a7e5997eca"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/9161844926059ba7f4749ace0ea8905a8e08eebb/smedja-linux-arm64.tar.gz"
      sha256 "29fa254b41521a7df47378dea672a3371f8bbdf15e10078907cbea913161167f"
    end
    on_intel do
      url "https://console.smedja.app/dl/9161844926059ba7f4749ace0ea8905a8e08eebb/smedja-linux-amd64.tar.gz"
      sha256 "8f6e40eadb4c63bd2c67f8722c6c8b1706f47e9791fdf1ddd7399ada3472c52e"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
