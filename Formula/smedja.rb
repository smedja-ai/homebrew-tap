# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1415"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/242d698670d5fded2eb3ed37b0944a77f135576e/smedja-darwin-arm64.tar.gz"
      sha256 "fad166517f4cecc2ff315e00cc055f44bf3c9786d1ebe49afc417cc7662bdc73"
    end
    on_intel do
      url "https://console.smedja.app/dl/242d698670d5fded2eb3ed37b0944a77f135576e/smedja-darwin-amd64.tar.gz"
      sha256 "3fe1bfcdfd1b02a0ca4a91dc88df5775a470e3dde1cc38fd8f991be930a5a7f6"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/242d698670d5fded2eb3ed37b0944a77f135576e/smedja-linux-arm64.tar.gz"
      sha256 "73a27beeb62c8397bfbd6cb986afc997513a2eb19499a64ba678f38b94a5ca75"
    end
    on_intel do
      url "https://console.smedja.app/dl/242d698670d5fded2eb3ed37b0944a77f135576e/smedja-linux-amd64.tar.gz"
      sha256 "bab2595665b5d3be76a071df61b8211376119022f93faedb2d24a0cf449aacf1"
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
