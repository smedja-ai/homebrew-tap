# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1468"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/d936dcdfb6d27410d752e42cd09cf49d3c10382f/smedja-darwin-arm64.tar.gz"
      sha256 "f64c6b6b9b1299efe100134b5a20cb00a18e635eedb3d0ed373fd3159df07f37"
    end
    on_intel do
      url "https://console.smedja.app/dl/d936dcdfb6d27410d752e42cd09cf49d3c10382f/smedja-darwin-amd64.tar.gz"
      sha256 "68a2724c31811bb6a76d4b38e345443e70751d3d980b201ab54083112735a3f7"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/d936dcdfb6d27410d752e42cd09cf49d3c10382f/smedja-linux-arm64.tar.gz"
      sha256 "ac4e647250bb8a28251c86258007c230357fa00a33e9a96f20727c9c46338fd4"
    end
    on_intel do
      url "https://console.smedja.app/dl/d936dcdfb6d27410d752e42cd09cf49d3c10382f/smedja-linux-amd64.tar.gz"
      sha256 "c642a25a0ecda189257cb0336f09b7748c68908b197763d3039686fff09e7f09"
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
