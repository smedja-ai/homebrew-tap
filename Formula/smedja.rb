# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1576"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/18875680404a6e9857bde9c3f45dd6c766512899/smedja-darwin-arm64.tar.gz"
      sha256 "2ecc4564c45bb60958fbfef9da2a0a801634e6080c3426b2bd3283927973943b"
    end
    on_intel do
      url "https://console.smedja.app/dl/18875680404a6e9857bde9c3f45dd6c766512899/smedja-darwin-amd64.tar.gz"
      sha256 "4047ea9d0a45399ca309eb4b5f0347dbc5c689f62992fda1a73742b0796267ed"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/18875680404a6e9857bde9c3f45dd6c766512899/smedja-linux-arm64.tar.gz"
      sha256 "b6a264e46ca262b5a7931f24e5206d2f5c9ff4532055f54bedf8cf584c36a8e0"
    end
    on_intel do
      url "https://console.smedja.app/dl/18875680404a6e9857bde9c3f45dd6c766512899/smedja-linux-amd64.tar.gz"
      sha256 "50eb6a70492c3fc9322739b969356bfd95fcc1ad19f316ba7300a2f228ee51bf"
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
