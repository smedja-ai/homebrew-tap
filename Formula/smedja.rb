# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1541"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/7493e0c55585a54502f9840b2ce9177280524a93/smedja-darwin-arm64.tar.gz"
      sha256 "bc867b66d657a5c86d36ee40f1d478cd6d4627d1f8629fdfaa4824b31f772f2e"
    end
    on_intel do
      url "https://console.smedja.app/dl/7493e0c55585a54502f9840b2ce9177280524a93/smedja-darwin-amd64.tar.gz"
      sha256 "681ee0a8dcbad3b1325b90f5325142789f7fe802ce96d61a3411edacad4a6343"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/7493e0c55585a54502f9840b2ce9177280524a93/smedja-linux-arm64.tar.gz"
      sha256 "0b03b9d80d30e0af0974b7f64563e21db5e159ec6f9bd1e550cd99e65771f7bc"
    end
    on_intel do
      url "https://console.smedja.app/dl/7493e0c55585a54502f9840b2ce9177280524a93/smedja-linux-amd64.tar.gz"
      sha256 "0395fe6905dd921f78fe0b2bc74f07ae16d627d6566c7337a0a730f73ba24430"
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
