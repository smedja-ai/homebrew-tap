# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1526"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/b17efdc9c0025b0809b872b0b055031ce57568f8/smedja-darwin-arm64.tar.gz"
      sha256 "9765050f594b7cb5be278d1d3f4a79f11d6aa0288f410d79ecb37ef326a00c75"
    end
    on_intel do
      url "https://console.smedja.app/dl/b17efdc9c0025b0809b872b0b055031ce57568f8/smedja-darwin-amd64.tar.gz"
      sha256 "35f64c88235ee01ddee881ac93b126e0dd4de196f04e79dfdd3b070d4897bc13"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/b17efdc9c0025b0809b872b0b055031ce57568f8/smedja-linux-arm64.tar.gz"
      sha256 "23d14577c81726e2a2caad1f748c9fdd3d24616000b27f96674ad050bdcffb4c"
    end
    on_intel do
      url "https://console.smedja.app/dl/b17efdc9c0025b0809b872b0b055031ce57568f8/smedja-linux-amd64.tar.gz"
      sha256 "2f7b59f6b59e15c07dcc69177090544c75a19b8261cf68722b4758e3e393e19b"
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
