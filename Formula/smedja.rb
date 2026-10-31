# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1527"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c9fbaf6839130a7814e8ac920fcaf097ffc85c0f/smedja-darwin-arm64.tar.gz"
      sha256 "835fabb1d90427a941fba9d1e1d81818ebf68662061aa0943f4791fa912283a6"
    end
    on_intel do
      url "https://console.smedja.app/dl/c9fbaf6839130a7814e8ac920fcaf097ffc85c0f/smedja-darwin-amd64.tar.gz"
      sha256 "29b8f6bb27ba335ae2a5419642d4df8b84007d31fcbb9f9ad1a997513e1cbea9"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c9fbaf6839130a7814e8ac920fcaf097ffc85c0f/smedja-linux-arm64.tar.gz"
      sha256 "77b0aabd69cf2f31d987de4219c16a753f6387ed5456a491af7b5598acdd64ae"
    end
    on_intel do
      url "https://console.smedja.app/dl/c9fbaf6839130a7814e8ac920fcaf097ffc85c0f/smedja-linux-amd64.tar.gz"
      sha256 "f2b993350e866b22d0af9bd1691b826658556631bda31247979201d87ea3fc53"
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
