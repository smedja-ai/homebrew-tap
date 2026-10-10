# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1050"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/21f01eef0799b99b1350edc1e40e1d67c085d344/smedja-darwin-arm64.tar.gz"
      sha256 "f6c399dfe991f49042f0ea6d4805954e6e02dfe516ef2fafda4af0386a85105d"
    end
    on_intel do
      url "https://console.smedja.app/dl/21f01eef0799b99b1350edc1e40e1d67c085d344/smedja-darwin-amd64.tar.gz"
      sha256 "a08fe8eb65e65b5de56eadefdd57430794bc6eceaa3e637c4a21c2f4f1f69c7e"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/21f01eef0799b99b1350edc1e40e1d67c085d344/smedja-linux-arm64.tar.gz"
      sha256 "020d4db1ee1620d8f995c8a37604884dd075016aa3ea7fcd337f84dc57f38ec8"
    end
    on_intel do
      url "https://console.smedja.app/dl/21f01eef0799b99b1350edc1e40e1d67c085d344/smedja-linux-amd64.tar.gz"
      sha256 "6395b9cfa0a45ac957cba482e258867a210c8e5f412e6a172ea88953f01cb962"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
