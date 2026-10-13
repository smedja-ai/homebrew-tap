# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1242"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/4b646015b6b8742515cb64b25c16104ec5eff4bf/smedja-darwin-arm64.tar.gz"
      sha256 "aade498e01ae3b21c18d7aacdd54702dcee6ebdde3465b1c6848dd80d925ebfd"
    end
    on_intel do
      url "https://console.smedja.app/dl/4b646015b6b8742515cb64b25c16104ec5eff4bf/smedja-darwin-amd64.tar.gz"
      sha256 "91cd7cb5b9eaab4d1e44b19ed8ddc560d81c2b80e8f7ff97a04ec3df77ce5a89"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/4b646015b6b8742515cb64b25c16104ec5eff4bf/smedja-linux-arm64.tar.gz"
      sha256 "72ee5ebbdd82742b21bed434f781199c2945fb807c2b8947d95302d21d1ce0c9"
    end
    on_intel do
      url "https://console.smedja.app/dl/4b646015b6b8742515cb64b25c16104ec5eff4bf/smedja-linux-amd64.tar.gz"
      sha256 "681427b826e228f888ac76974795fd619e76c986c6699bf7059eb999a1c9bd09"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
