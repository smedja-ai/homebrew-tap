# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1377"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/10636f4e7260d44f1c95ebccc72da15baaf014aa/smedja-darwin-arm64.tar.gz"
      sha256 "4da824c17f06d7cec0cebfdf1d5d9d47eb58e7dc3ef3966492eaec2e7c9a6e89"
    end
    on_intel do
      url "https://console.smedja.app/dl/10636f4e7260d44f1c95ebccc72da15baaf014aa/smedja-darwin-amd64.tar.gz"
      sha256 "a817d84df94a4c437c411e976f2ade8855748c3c72eb5ec1e2dd448b2c15d48b"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/10636f4e7260d44f1c95ebccc72da15baaf014aa/smedja-linux-arm64.tar.gz"
      sha256 "d99345fa347eb005d29defc52760ff8395fd769a1848c8c341187f1bbd79a23b"
    end
    on_intel do
      url "https://console.smedja.app/dl/10636f4e7260d44f1c95ebccc72da15baaf014aa/smedja-linux-amd64.tar.gz"
      sha256 "d1683a36e71e8ecc590e97e53fd0cf5b0665d8e91f9b5095d71c9b292baa9916"
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
