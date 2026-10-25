# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1498"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/2d874e12dc81ca588cd84ccdc573d53543623d5a/smedja-darwin-arm64.tar.gz"
      sha256 "b06734771e87d2f20f9f3541080613335d9ada73473aee4d38ec7d0044c7e38e"
    end
    on_intel do
      url "https://console.smedja.app/dl/2d874e12dc81ca588cd84ccdc573d53543623d5a/smedja-darwin-amd64.tar.gz"
      sha256 "215316e4d1b6228bdb6f2eaaa6c17f936bb116177cb05f892d5695aaf5d1e77f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/2d874e12dc81ca588cd84ccdc573d53543623d5a/smedja-linux-arm64.tar.gz"
      sha256 "d17e8e83746935d2f5ef1fefd5af2c2a207c9f6c9dd92d4756961c0fb1c45fc4"
    end
    on_intel do
      url "https://console.smedja.app/dl/2d874e12dc81ca588cd84ccdc573d53543623d5a/smedja-linux-amd64.tar.gz"
      sha256 "a5a1d28538512f24a8be8813ab947f7e5458da5e4bbbcc99af2ab2c1c3c4ef4c"
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
