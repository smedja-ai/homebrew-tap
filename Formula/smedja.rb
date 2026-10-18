# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1408"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/2a2728b5c5b658f365f2417aadfc437b2e574601/smedja-darwin-arm64.tar.gz"
      sha256 "d4e2e7390551e6f9f80f265fd169ceebffc0e244fba52219944cb025ded6a9fa"
    end
    on_intel do
      url "https://console.smedja.app/dl/2a2728b5c5b658f365f2417aadfc437b2e574601/smedja-darwin-amd64.tar.gz"
      sha256 "c65164dcf37483c2f50a74d28fd13c8b404c80260b0a71b4d8288cf997e26d49"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/2a2728b5c5b658f365f2417aadfc437b2e574601/smedja-linux-arm64.tar.gz"
      sha256 "fc18c7e5fb35e7d1501570d3de19cad4d8de522841842c1b6542829ba7759b7a"
    end
    on_intel do
      url "https://console.smedja.app/dl/2a2728b5c5b658f365f2417aadfc437b2e574601/smedja-linux-amd64.tar.gz"
      sha256 "d7dab557a602df5c4dcb4fbda83cafe436673a37f0a230292583830e47c68f72"
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
