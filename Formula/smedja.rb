# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1542"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/82d9000abecbab77a9cdce408ab9f1d52a3e9814/smedja-darwin-arm64.tar.gz"
      sha256 "aca232a681f0f5715c9b2169f54faf3e000f5a0e0ccf228942d6110cc5662ba8"
    end
    on_intel do
      url "https://console.smedja.app/dl/82d9000abecbab77a9cdce408ab9f1d52a3e9814/smedja-darwin-amd64.tar.gz"
      sha256 "85c33ecaffd50b26866add34135421ab4d22f6b792b6b6d5f43d815eca0179b1"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/82d9000abecbab77a9cdce408ab9f1d52a3e9814/smedja-linux-arm64.tar.gz"
      sha256 "465d02cecc7af87df4eea2667eafbbdfde19ed8df8d6f9a000625ceb7c3e2e21"
    end
    on_intel do
      url "https://console.smedja.app/dl/82d9000abecbab77a9cdce408ab9f1d52a3e9814/smedja-linux-amd64.tar.gz"
      sha256 "54ede65c0326cfd53b34e8cacf7660987175b223abd46e791c6f0967a5ef83f1"
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
