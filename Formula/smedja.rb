# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1380"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/0e8a52ec9a5c37180b580aeb01fe45b5f9a06771/smedja-darwin-arm64.tar.gz"
      sha256 "34f0138d6f22b8d6225a77f402b2fb769c6eb162bbc0a0ab9b2e82563dc1f09c"
    end
    on_intel do
      url "https://console.smedja.app/dl/0e8a52ec9a5c37180b580aeb01fe45b5f9a06771/smedja-darwin-amd64.tar.gz"
      sha256 "a3b789bf85e8b82b1ad6b6c5cdd0c99bdf8987225d2703bf2f97d373f8c47d39"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/0e8a52ec9a5c37180b580aeb01fe45b5f9a06771/smedja-linux-arm64.tar.gz"
      sha256 "c84ac58ead6c56bb63303a483cddeb4f0345791d33e217fda87d1435d898a400"
    end
    on_intel do
      url "https://console.smedja.app/dl/0e8a52ec9a5c37180b580aeb01fe45b5f9a06771/smedja-linux-amd64.tar.gz"
      sha256 "681986fc50b37cbb891fe1df93de628f639e9f312056dc8e2e45068a03c9cd6e"
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
