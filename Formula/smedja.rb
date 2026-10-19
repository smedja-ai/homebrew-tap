# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1417"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/2014b8724dbba77b29baa48a3cc4878f22b63640/smedja-darwin-arm64.tar.gz"
      sha256 "71ff1d7147f53fb83d22ec3f2a0db8614701343f41afe0e49817efda88d4302e"
    end
    on_intel do
      url "https://console.smedja.app/dl/2014b8724dbba77b29baa48a3cc4878f22b63640/smedja-darwin-amd64.tar.gz"
      sha256 "f4883385663ce6d61445f056152339d25150e82845a6a46fe6079a18149ffc87"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/2014b8724dbba77b29baa48a3cc4878f22b63640/smedja-linux-arm64.tar.gz"
      sha256 "9b5fc29d779fafd2e08fd02fd15aaa82d469ae9d30d5f7b333cdcb93a1fa7376"
    end
    on_intel do
      url "https://console.smedja.app/dl/2014b8724dbba77b29baa48a3cc4878f22b63640/smedja-linux-amd64.tar.gz"
      sha256 "baa34a9a7505a4bd283355c3334e0c026b43c15ac2a34f42a7b3305f5e18ed2c"
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
