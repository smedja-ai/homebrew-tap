# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1521"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/30ff7388c59a738f817431796ec9cccab658e929/smedja-darwin-arm64.tar.gz"
      sha256 "233747b2a7c49b7b40bfca0893f4f700421a5aa94edd4bc44158069439111b9f"
    end
    on_intel do
      url "https://console.smedja.app/dl/30ff7388c59a738f817431796ec9cccab658e929/smedja-darwin-amd64.tar.gz"
      sha256 "f32371567c1c314cafc41bc751e73caa4ba9601dafab303b44626a528786a56c"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/30ff7388c59a738f817431796ec9cccab658e929/smedja-linux-arm64.tar.gz"
      sha256 "9e5143517ee2029402aa6c144ea41ae5bb4c6116bdeaf4bfa28a88aabc025480"
    end
    on_intel do
      url "https://console.smedja.app/dl/30ff7388c59a738f817431796ec9cccab658e929/smedja-linux-amd64.tar.gz"
      sha256 "818a496a00f9c4409ca30b05998fc78a2b71f5623ddceeb0abfccff14b9acc63"
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
