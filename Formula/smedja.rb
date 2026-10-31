# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1536"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6f4fef6c4d251952ab0ba7b6838d108aeab4f114/smedja-darwin-arm64.tar.gz"
      sha256 "c8398835d75902c38cc29592e6b73c1619bff339ea8c5f76369897e85e6ef997"
    end
    on_intel do
      url "https://console.smedja.app/dl/6f4fef6c4d251952ab0ba7b6838d108aeab4f114/smedja-darwin-amd64.tar.gz"
      sha256 "1ca875a002124340b836fd5668b4d4918f4f96af883883aee4cd9ffa8e052604"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6f4fef6c4d251952ab0ba7b6838d108aeab4f114/smedja-linux-arm64.tar.gz"
      sha256 "3bdf6cc232b8b018874910f45032575bc3033422df6055f2abfc42326d6a459c"
    end
    on_intel do
      url "https://console.smedja.app/dl/6f4fef6c4d251952ab0ba7b6838d108aeab4f114/smedja-linux-amd64.tar.gz"
      sha256 "4d04183c4fd5167b5617a4351dc1c0c922eb411b07b862d477cfa4b14d25f7ba"
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
