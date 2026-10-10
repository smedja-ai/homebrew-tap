# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1077"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/94ab995eb4dbe342b4a3b62d75f27350e2a1b2b4/smedja-darwin-arm64.tar.gz"
      sha256 "16fc15e86bef3bf44461d5f946620dfbee697aaf8afc3f79d2ae3913e2b4e668"
    end
    on_intel do
      url "https://console.smedja.app/dl/94ab995eb4dbe342b4a3b62d75f27350e2a1b2b4/smedja-darwin-amd64.tar.gz"
      sha256 "4060a672ebf4610752ce9f95d395d701fef0d4a0eef4f046801afbe45b12e643"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/94ab995eb4dbe342b4a3b62d75f27350e2a1b2b4/smedja-linux-arm64.tar.gz"
      sha256 "fd5c998e62fd4e3934b79df494ec9394910fa151548587c019c6d0b5c90690b4"
    end
    on_intel do
      url "https://console.smedja.app/dl/94ab995eb4dbe342b4a3b62d75f27350e2a1b2b4/smedja-linux-amd64.tar.gz"
      sha256 "2b5de1835a3890cf10634ececcbe2be04e56f88b21568ab0ecbdce01d5362741"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
