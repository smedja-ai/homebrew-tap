# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1397"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/99a2564f47259d318d2595947c14f9958e7dd6d1/smedja-darwin-arm64.tar.gz"
      sha256 "dbd2dcc29c4de62c194dfd0a820b6015ecb4e44bce69bd69b7e426b6e699d7ea"
    end
    on_intel do
      url "https://console.smedja.app/dl/99a2564f47259d318d2595947c14f9958e7dd6d1/smedja-darwin-amd64.tar.gz"
      sha256 "9f5c0725d61de7f16bb577da7ffd72567ad914bbddf0f3babd59d329529e0bba"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/99a2564f47259d318d2595947c14f9958e7dd6d1/smedja-linux-arm64.tar.gz"
      sha256 "a1c10da23eb67e730aae08569eba50ab111af60177fb612eac6b1a8be0200120"
    end
    on_intel do
      url "https://console.smedja.app/dl/99a2564f47259d318d2595947c14f9958e7dd6d1/smedja-linux-amd64.tar.gz"
      sha256 "d967959cc50be1138eb4feca56f8ee25b10da7e1f1420b3f7c85bf2c90326e4a"
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
