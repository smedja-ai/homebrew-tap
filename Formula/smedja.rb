# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.811"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/a3bc81d07b8c719d62c80a0fd864508c3ab4b76c/smedja-darwin-arm64.tar.gz"
      sha256 "9050550508b31392dae0ae8cdbc067dde2caa48e882e95cf426ef9386258298e"
    end
    on_intel do
      url "https://console.smedja.app/dl/a3bc81d07b8c719d62c80a0fd864508c3ab4b76c/smedja-darwin-amd64.tar.gz"
      sha256 "99fc28cb8db0eb3c9bd6f9446d2567ff56e28c10518020cf6e0950906f921c1a"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/a3bc81d07b8c719d62c80a0fd864508c3ab4b76c/smedja-linux-arm64.tar.gz"
      sha256 "887e38139ba35f96dcc56c361ff14081804599f9b8df994af422f5130c1ec01a"
    end
    on_intel do
      url "https://console.smedja.app/dl/a3bc81d07b8c719d62c80a0fd864508c3ab4b76c/smedja-linux-amd64.tar.gz"
      sha256 "b6ec86dc7f39142a71691cdf09e4b435d6149dbadfdacb99a8317f0ca0c978a9"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
