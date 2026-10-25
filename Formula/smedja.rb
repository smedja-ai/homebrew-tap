# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1517"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/aa1fb8ceba4f01b8d5316c3c9cf697025a61607b/smedja-darwin-arm64.tar.gz"
      sha256 "87fa4e4e1e23384e7cd9466e02876987289df2db26da3fdc37e65171d97dec62"
    end
    on_intel do
      url "https://console.smedja.app/dl/aa1fb8ceba4f01b8d5316c3c9cf697025a61607b/smedja-darwin-amd64.tar.gz"
      sha256 "f66bd0b52762462029c37630f15b4f64f258ad1b3090d9e55c5ba3bd413ced38"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/aa1fb8ceba4f01b8d5316c3c9cf697025a61607b/smedja-linux-arm64.tar.gz"
      sha256 "554d9ab201f12863aa14fad711c110df5cbf390b5767752a86b53c837286d2be"
    end
    on_intel do
      url "https://console.smedja.app/dl/aa1fb8ceba4f01b8d5316c3c9cf697025a61607b/smedja-linux-amd64.tar.gz"
      sha256 "3d72110a0c8f209ca0ff9fb7ab3fc1ac796efb6bb1dcf6737ec7c50e14f31026"
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
