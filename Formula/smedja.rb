# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.835"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/e0311063e9a3c5b21c832fcea16fda9e62c152e5/smedja-darwin-arm64.tar.gz"
      sha256 "619db58fdcd2b4676a65c4a50a3ddfd5bff0bbb46a20b8b5a508b449d10d829e"
    end
    on_intel do
      url "https://console.smedja.app/dl/e0311063e9a3c5b21c832fcea16fda9e62c152e5/smedja-darwin-amd64.tar.gz"
      sha256 "8531336b9108382e52e6caed95657533bcdb870c88f733dfafdea3160846ed45"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/e0311063e9a3c5b21c832fcea16fda9e62c152e5/smedja-linux-arm64.tar.gz"
      sha256 "534abfcc2c06173c6d79216f6934e014ec0dc52768075a334f0648da294f2830"
    end
    on_intel do
      url "https://console.smedja.app/dl/e0311063e9a3c5b21c832fcea16fda9e62c152e5/smedja-linux-amd64.tar.gz"
      sha256 "2d20bd91d568485839a5e604203923a9879c3ae2040f3be75cd64dbe5a1544a4"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
