# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1525"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/74d771904fd26c6d92504c39772392c6ab16c230/smedja-darwin-arm64.tar.gz"
      sha256 "aeb3fe5acddac2ebe8e259d2ca721f857aa110117d5fe03cebde0aaf9a32a8d8"
    end
    on_intel do
      url "https://console.smedja.app/dl/74d771904fd26c6d92504c39772392c6ab16c230/smedja-darwin-amd64.tar.gz"
      sha256 "bbadcb0318e19b108e73a68680ba8193082590bc876c99d7059f88a23bccc4b9"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/74d771904fd26c6d92504c39772392c6ab16c230/smedja-linux-arm64.tar.gz"
      sha256 "d98ec2b7cd03c03c4c552a9546db718ecc194193f9c6f8a43a62a6d1297bd79e"
    end
    on_intel do
      url "https://console.smedja.app/dl/74d771904fd26c6d92504c39772392c6ab16c230/smedja-linux-amd64.tar.gz"
      sha256 "04f7b0125461ff6355e55b2d0a4d6e79fc94e7b9628d87d20fac44732be22d81"
    end
  end

  def install
    bin.install "smedja"
  end

  # SME-347: the binary says the release this formula is (D947.1).
  test do
    assert_match "smedja #{version} (", shell_output("#{bin}/smedja --version")
  end
end
