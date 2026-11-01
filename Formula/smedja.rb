# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1570"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0e32b5282cda445c5c4a109aee5f90e0b8c6a0ef/smedja-darwin-arm64.tar.gz"
      sha256 "a41c4c34d3bd6e1c9bf040f3cb6113dcdd0588d963359b3aa4b969b4614d9942"
    end
    on_intel do
      url "https://console.smedja.app/dl/0e32b5282cda445c5c4a109aee5f90e0b8c6a0ef/smedja-darwin-amd64.tar.gz"
      sha256 "838b31998a2584de3392be82d90d00a2947f482ee15fc01a237430d92c48ac0e"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0e32b5282cda445c5c4a109aee5f90e0b8c6a0ef/smedja-linux-arm64.tar.gz"
      sha256 "28c4058cf370ee07b7d305cdf29401c75c11e141e0cb69bdd64a5e949cf42b6e"
    end
    on_intel do
      url "https://console.smedja.app/dl/0e32b5282cda445c5c4a109aee5f90e0b8c6a0ef/smedja-linux-amd64.tar.gz"
      sha256 "b1026fa9f635bf095344404f281df9366428b44b447ffead6d51ccdadcbc7063"
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
