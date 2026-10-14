# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1282"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/a3c14e40eb9f5df8dfbe5735fd1d2350bbbb499c/smedja-darwin-arm64.tar.gz"
      sha256 "d6ba942596f0c507c03851f04a4d64b60dc038021f1f104059e2448e17453b21"
    end
    on_intel do
      url "https://console.smedja.app/dl/a3c14e40eb9f5df8dfbe5735fd1d2350bbbb499c/smedja-darwin-amd64.tar.gz"
      sha256 "c8ec8e370e05411b41d9093e8709d4218fb2c52070c2933a087e64b8cb894e79"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/a3c14e40eb9f5df8dfbe5735fd1d2350bbbb499c/smedja-linux-arm64.tar.gz"
      sha256 "5d43a5899c6eefddf90ba0c9e5145bfee2eb223a1472a43393542b5a90a87271"
    end
    on_intel do
      url "https://console.smedja.app/dl/a3c14e40eb9f5df8dfbe5735fd1d2350bbbb499c/smedja-linux-amd64.tar.gz"
      sha256 "f977e588da857508833900faaabe70602a7585de4aee2b488d7a7069de42edfb"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
