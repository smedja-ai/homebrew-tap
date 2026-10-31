# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1546"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/21605ce48d0b13b0fd8a5213973c6d27ef3a6104/smedja-darwin-arm64.tar.gz"
      sha256 "321479f1217c645d9f633c8c15995256b3ebc297a4a8f642edeb6f9b7b87f647"
    end
    on_intel do
      url "https://console.smedja.app/dl/21605ce48d0b13b0fd8a5213973c6d27ef3a6104/smedja-darwin-amd64.tar.gz"
      sha256 "04a54413be746980831d9601e5d19b12b6b0802d5452bb4bd83fbcd286c70e32"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/21605ce48d0b13b0fd8a5213973c6d27ef3a6104/smedja-linux-arm64.tar.gz"
      sha256 "40f3c31286c3f01662d45f6216c44720516429acb3d862f2662bc3a319a3751f"
    end
    on_intel do
      url "https://console.smedja.app/dl/21605ce48d0b13b0fd8a5213973c6d27ef3a6104/smedja-linux-amd64.tar.gz"
      sha256 "950f3f3f8a919cedad89ca331a922429e60b5b627745a65085b71d22d6d2b507"
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
