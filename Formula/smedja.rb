# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1429"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/76af7263ab9f4686561b3572bd4d9c969a197053/smedja-darwin-arm64.tar.gz"
      sha256 "b4b5bbdd1fa9caffa6198dbc7135e73b89aea17868fea3ff3b38ef65b4dded37"
    end
    on_intel do
      url "https://console.smedja.app/dl/76af7263ab9f4686561b3572bd4d9c969a197053/smedja-darwin-amd64.tar.gz"
      sha256 "f95a4b0018dd9f3cacb7aa5d17fde19cf00b56359c4987265a1120917d1f87cf"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/76af7263ab9f4686561b3572bd4d9c969a197053/smedja-linux-arm64.tar.gz"
      sha256 "4145ee175a253e439d002a9526b1ead16f18244871231e3cd4f498305a742a66"
    end
    on_intel do
      url "https://console.smedja.app/dl/76af7263ab9f4686561b3572bd4d9c969a197053/smedja-linux-amd64.tar.gz"
      sha256 "03244494e3807ab9f2c3e4aa20e4d5ef651a3d9194c20e6a2da0065a7d19934f"
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
