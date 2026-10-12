# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1138"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/7998fd2205cb8458bd08b443814e9dab9b70fbfb/smedja-darwin-arm64.tar.gz"
      sha256 "31d79e7d36fef25bd764f9d468430de7bade28daa53853bed944e5ad5798a3a9"
    end
    on_intel do
      url "https://console.smedja.app/dl/7998fd2205cb8458bd08b443814e9dab9b70fbfb/smedja-darwin-amd64.tar.gz"
      sha256 "3bb57684231398f31fcdade0e27e0989d8f349ad1b549d426f2ad8e3b51afa53"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/7998fd2205cb8458bd08b443814e9dab9b70fbfb/smedja-linux-arm64.tar.gz"
      sha256 "e703f5359ffb542ff3e548c3ed0abee98ac09d4e11a1349afe6d607491e8348a"
    end
    on_intel do
      url "https://console.smedja.app/dl/7998fd2205cb8458bd08b443814e9dab9b70fbfb/smedja-linux-amd64.tar.gz"
      sha256 "5c4399ff3d814a8ed38828b49ced38eef211ec1892f2da84fd9f603033e0f981"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
