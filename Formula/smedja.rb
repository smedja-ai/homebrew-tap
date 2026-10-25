# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1477"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/77981f4cac43fc2b0f24cc8d421dafe1f07da3e9/smedja-darwin-arm64.tar.gz"
      sha256 "ea058b8e18958e759b49bce5092a536e6dcb9d39469a673b00355f51c12069e9"
    end
    on_intel do
      url "https://console.smedja.app/dl/77981f4cac43fc2b0f24cc8d421dafe1f07da3e9/smedja-darwin-amd64.tar.gz"
      sha256 "d2431be167556098f3a68d7a3fd64b628eeb8688da9b7b0c27235e4bf50def8f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/77981f4cac43fc2b0f24cc8d421dafe1f07da3e9/smedja-linux-arm64.tar.gz"
      sha256 "748f2fd4041d7d1523b7f6ca0f6df4e0a4a7fa61376ddb74975040a82a68a0ac"
    end
    on_intel do
      url "https://console.smedja.app/dl/77981f4cac43fc2b0f24cc8d421dafe1f07da3e9/smedja-linux-amd64.tar.gz"
      sha256 "d479b5d690df5df58d050a63902cfa2efd65e6ae16ada7cc69525fcfc157f79f"
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
