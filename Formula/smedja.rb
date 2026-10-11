# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1123"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/9a476b808e0c4183a84eeb9adac3b8b1c25e02f2/smedja-darwin-arm64.tar.gz"
      sha256 "43b29e9822fcfbaaf4882de1adb851b75f0dc73546dda6c35dd4eafd56d0c705"
    end
    on_intel do
      url "https://console.smedja.app/dl/9a476b808e0c4183a84eeb9adac3b8b1c25e02f2/smedja-darwin-amd64.tar.gz"
      sha256 "e8000bebbb1827255a01afcdcf8d7cd2912a266f1719310d908e442f574bad83"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/9a476b808e0c4183a84eeb9adac3b8b1c25e02f2/smedja-linux-arm64.tar.gz"
      sha256 "ff2fad9290ccbe6c622422fe2b5ae95ce13653af0b42ecfc7c0f73ae808c8a97"
    end
    on_intel do
      url "https://console.smedja.app/dl/9a476b808e0c4183a84eeb9adac3b8b1c25e02f2/smedja-linux-amd64.tar.gz"
      sha256 "3ac8907aafd88d89e08e62915b752cf1be82bd52a72abab716ea089c810a7201"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
