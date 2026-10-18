# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1386"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6bf3049003501d87466746bff0f9e63d421a9245/smedja-darwin-arm64.tar.gz"
      sha256 "5b6d7f31d5a14ca72b43557330c5811c5ea56527ddd705ab4dc443065700459a"
    end
    on_intel do
      url "https://console.smedja.app/dl/6bf3049003501d87466746bff0f9e63d421a9245/smedja-darwin-amd64.tar.gz"
      sha256 "214e37ded0717c68c64e733ea37c0a88b0b13cebcaf313f4cca681d355d834cb"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6bf3049003501d87466746bff0f9e63d421a9245/smedja-linux-arm64.tar.gz"
      sha256 "19eceba2c8c452c2b1cba41131fe2879846836eadcf28c4ca79780a125737377"
    end
    on_intel do
      url "https://console.smedja.app/dl/6bf3049003501d87466746bff0f9e63d421a9245/smedja-linux-amd64.tar.gz"
      sha256 "2e015e64d4ee3c24742dd55b5260ef8abc8cb6bc7d9771d67e106a48fe4e54cf"
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
