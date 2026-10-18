# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1374"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/043b96884f74a0bb3cd4139aaa65a3b6bd5cfebb/smedja-darwin-arm64.tar.gz"
      sha256 "2554a4b8f2c5a6194d87d995ac7ed56c1b63163bc7df8c25609169cd55f7ada1"
    end
    on_intel do
      url "https://console.smedja.app/dl/043b96884f74a0bb3cd4139aaa65a3b6bd5cfebb/smedja-darwin-amd64.tar.gz"
      sha256 "edae7a0662abd810f1b970f8891b40b0d3d112810efe44b11f747d227fc73aa4"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/043b96884f74a0bb3cd4139aaa65a3b6bd5cfebb/smedja-linux-arm64.tar.gz"
      sha256 "eb62b6039661051f4d3bced13d236913b556f2c6185163d74010f34ecf10e350"
    end
    on_intel do
      url "https://console.smedja.app/dl/043b96884f74a0bb3cd4139aaa65a3b6bd5cfebb/smedja-linux-amd64.tar.gz"
      sha256 "7342830706c3c474c8cc22383e2be91c73ef7fb9eaab17c07e44d9d284ea83f5"
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
