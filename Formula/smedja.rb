# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1321"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/3f6d0db8d5b04d2185bb3d3b40709485567618a8/smedja-darwin-arm64.tar.gz"
      sha256 "cd7719c3f741115c3519402f3839666df66169f086722b2b94bf15629812ec56"
    end
    on_intel do
      url "https://console.smedja.app/dl/3f6d0db8d5b04d2185bb3d3b40709485567618a8/smedja-darwin-amd64.tar.gz"
      sha256 "f4687827e9bd6274334575e9b0f7678b618885553f6c4686cc5fcafee8b2db0f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/3f6d0db8d5b04d2185bb3d3b40709485567618a8/smedja-linux-arm64.tar.gz"
      sha256 "37573a7f7e056ee92d3cfb3057f5b34663bfc18ab0aa8b705af6f074c9e80585"
    end
    on_intel do
      url "https://console.smedja.app/dl/3f6d0db8d5b04d2185bb3d3b40709485567618a8/smedja-linux-amd64.tar.gz"
      sha256 "92bd0eb17edcc0f085f484f90d33a6a85a9b4ba75f6a4fa7b7da5dcc68f57bd1"
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
