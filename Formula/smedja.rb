# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1460"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0efe413013bd0d2111dc5beace0738e67721a3e5/smedja-darwin-arm64.tar.gz"
      sha256 "f9bff424b8dc0d7b161a406dec7b76c838c46f090c2987a42618638040c5d091"
    end
    on_intel do
      url "https://console.smedja.app/dl/0efe413013bd0d2111dc5beace0738e67721a3e5/smedja-darwin-amd64.tar.gz"
      sha256 "9cb20710c41c0f73453bf1141936683853efa47b773a9ee5d3b74154afc06cee"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0efe413013bd0d2111dc5beace0738e67721a3e5/smedja-linux-arm64.tar.gz"
      sha256 "2c389e2beb8bfa166a19e421c608500833553514ccaaab29ddc79de7301f1def"
    end
    on_intel do
      url "https://console.smedja.app/dl/0efe413013bd0d2111dc5beace0738e67721a3e5/smedja-linux-amd64.tar.gz"
      sha256 "137849cb98e0e7dc154192ed7d5cd5cf6e642b940a260814cba9f84370759550"
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
