# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1543"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c45520442764742cdc9013a4f16c333a42d4ec93/smedja-darwin-arm64.tar.gz"
      sha256 "a77fbcc010a636783743c6c67a0ce6c79cc3e0f533a473118bfdd261918df3f1"
    end
    on_intel do
      url "https://console.smedja.app/dl/c45520442764742cdc9013a4f16c333a42d4ec93/smedja-darwin-amd64.tar.gz"
      sha256 "96e240c1638d1f45bc48895b5dff7098bdab7fa3e839add277f50ba3d83f6578"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c45520442764742cdc9013a4f16c333a42d4ec93/smedja-linux-arm64.tar.gz"
      sha256 "1271c2b7c8dbaea3673deec042056f49eafa30f12af86ea15b8d1e51c748883b"
    end
    on_intel do
      url "https://console.smedja.app/dl/c45520442764742cdc9013a4f16c333a42d4ec93/smedja-linux-amd64.tar.gz"
      sha256 "1f14294070689625f027d29e4a2c5f77a36992f0f85b695a4165917493e5c337"
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
