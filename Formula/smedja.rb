# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.834"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/70e0d644e30b15f9e06b76d072cf9ab26acbc954/smedja-darwin-arm64.tar.gz"
      sha256 "cec1564f75cccf7ee4ebdf0abcaf14d99ad1dfb9544e8d80b14e0aa1bd15b8c6"
    end
    on_intel do
      url "https://console.smedja.app/dl/70e0d644e30b15f9e06b76d072cf9ab26acbc954/smedja-darwin-amd64.tar.gz"
      sha256 "895eee183fbea561cd232391243a2e9591e04bb7db6643968db7ca0b8eb1b324"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/70e0d644e30b15f9e06b76d072cf9ab26acbc954/smedja-linux-arm64.tar.gz"
      sha256 "1094af7d21e0424e650946620960146098d409ac770672b49906d20782bf2763"
    end
    on_intel do
      url "https://console.smedja.app/dl/70e0d644e30b15f9e06b76d072cf9ab26acbc954/smedja-linux-amd64.tar.gz"
      sha256 "765f3eda4a7cc1ea4a1f183bbc2ca99bf351df2eaf64ab6c054d111272c2e236"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
