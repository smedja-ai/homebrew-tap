# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1418"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/806e4f6b4d3e32ad11c6723f3864d80ac513c374/smedja-darwin-arm64.tar.gz"
      sha256 "e3a10065c5f5a1ea4a371c52322531b8f74611806808b3a0a69897e272abcfe5"
    end
    on_intel do
      url "https://console.smedja.app/dl/806e4f6b4d3e32ad11c6723f3864d80ac513c374/smedja-darwin-amd64.tar.gz"
      sha256 "f12298a061a05a91d1242dcf4f8847029a5c0a4abd97b519f28aebc5d581ccfa"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/806e4f6b4d3e32ad11c6723f3864d80ac513c374/smedja-linux-arm64.tar.gz"
      sha256 "166fcb8bba036d9058568652b39e7b2f1677bdf42d48fbee57dfc24f4b9a5ee9"
    end
    on_intel do
      url "https://console.smedja.app/dl/806e4f6b4d3e32ad11c6723f3864d80ac513c374/smedja-linux-amd64.tar.gz"
      sha256 "b6fe61809cf995cb77ebd9639ffd7e65e66af62b8c8cc57e6ee2746c2398d6cd"
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
