# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1368"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/9a8a897dcb295ef749dda5cbe07a611adf9d5bb9/smedja-darwin-arm64.tar.gz"
      sha256 "79f6afa520582b41818a2eff93fb8a69ca599d8efd009e16b8bea34542c4f54c"
    end
    on_intel do
      url "https://console.smedja.app/dl/9a8a897dcb295ef749dda5cbe07a611adf9d5bb9/smedja-darwin-amd64.tar.gz"
      sha256 "66a1168c23b2c24b411b169151df94692ed3e38dfe2744e3ce880afdb03e2ba7"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/9a8a897dcb295ef749dda5cbe07a611adf9d5bb9/smedja-linux-arm64.tar.gz"
      sha256 "0c5e2e701b68486474c3491344e3e4972adc74264097309792bb699d3652d49a"
    end
    on_intel do
      url "https://console.smedja.app/dl/9a8a897dcb295ef749dda5cbe07a611adf9d5bb9/smedja-linux-amd64.tar.gz"
      sha256 "a0b0094ea51f712cefa61d45957738e8c8602f8128521ca26ffb48e1a6edf19d"
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
