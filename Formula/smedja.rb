# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1307"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0ac576910a37dde313bffda26689a9491dcd49a0/smedja-darwin-arm64.tar.gz"
      sha256 "eee348771e73cb4d7e8fb64ea257baf2d82ee97a31ee9ab5de9a9e7a63ee768c"
    end
    on_intel do
      url "https://console.smedja.app/dl/0ac576910a37dde313bffda26689a9491dcd49a0/smedja-darwin-amd64.tar.gz"
      sha256 "f66e70f7888676485db68ff6999ea487987e247497f577e91cd8f16b156633eb"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0ac576910a37dde313bffda26689a9491dcd49a0/smedja-linux-arm64.tar.gz"
      sha256 "b28ea0a2d2710eede831ae310749191d2924ed7049f03ceabd705f482faba9ae"
    end
    on_intel do
      url "https://console.smedja.app/dl/0ac576910a37dde313bffda26689a9491dcd49a0/smedja-linux-amd64.tar.gz"
      sha256 "bfbbd6aa30856249b21c3f635b75a7338c5d295b83ee8b80c50db100b2c16a51"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
