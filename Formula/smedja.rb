# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1009"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/a203be7b01ed18cd24dc5f2df55c59d09783fcf0/smedja-darwin-arm64.tar.gz"
      sha256 "da67b2f21a437cdd7f760e546a2ceaa850a7158b42413d7b287781a7c0bc5b64"
    end
    on_intel do
      url "https://console.smedja.app/dl/a203be7b01ed18cd24dc5f2df55c59d09783fcf0/smedja-darwin-amd64.tar.gz"
      sha256 "819392e43d47e3f7fd17845190fa314db35ceb55523c11622d20e5546b2e6fb4"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/a203be7b01ed18cd24dc5f2df55c59d09783fcf0/smedja-linux-arm64.tar.gz"
      sha256 "14c4b03d4871c61388ae2deb4cbebbaa26ba1ab52099634709661ce2f37ae54b"
    end
    on_intel do
      url "https://console.smedja.app/dl/a203be7b01ed18cd24dc5f2df55c59d09783fcf0/smedja-linux-amd64.tar.gz"
      sha256 "88396721875b1bb42a98c60df9c7dd48dd02a00dd28487c73a60aa3040dac603"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
