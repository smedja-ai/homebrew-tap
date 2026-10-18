# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1402"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/58105ad5f293252454821a176cb8832a1eb6e397/smedja-darwin-arm64.tar.gz"
      sha256 "88ef6aabedafa37717db4adfd11cca65aab682cc2ba8e8d9867d7d280e1a4e78"
    end
    on_intel do
      url "https://console.smedja.app/dl/58105ad5f293252454821a176cb8832a1eb6e397/smedja-darwin-amd64.tar.gz"
      sha256 "d6e73c2fa67b3869790cede9387d8b437abf2c1948353f2ad5bafe42980332d8"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/58105ad5f293252454821a176cb8832a1eb6e397/smedja-linux-arm64.tar.gz"
      sha256 "f0b97771bc9401aabf8976691accf82808b4e01ddc9126335926ce8df007cec6"
    end
    on_intel do
      url "https://console.smedja.app/dl/58105ad5f293252454821a176cb8832a1eb6e397/smedja-linux-amd64.tar.gz"
      sha256 "4cf076b33776bda73dbfa3d5ca996ac45dacdb6ae15bb1523cd9666ef0377f02"
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
