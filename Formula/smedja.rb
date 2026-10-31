# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1530"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/ff552a3c755306236529f6a62d6fd6a6cd8d9795/smedja-darwin-arm64.tar.gz"
      sha256 "77b5685134074c1ac6db6e8b04155c1692676f6be4b0a0273c6f4bdd32ad46c2"
    end
    on_intel do
      url "https://console.smedja.app/dl/ff552a3c755306236529f6a62d6fd6a6cd8d9795/smedja-darwin-amd64.tar.gz"
      sha256 "7dd0902dd74757e22eafa31f9b47a7ad57814c24696cc3ccc1b78891c0f21af4"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/ff552a3c755306236529f6a62d6fd6a6cd8d9795/smedja-linux-arm64.tar.gz"
      sha256 "8012d66a3d4101308234bb2ad3d808a43e9627e6adc77686aba1f337c4050d23"
    end
    on_intel do
      url "https://console.smedja.app/dl/ff552a3c755306236529f6a62d6fd6a6cd8d9795/smedja-linux-amd64.tar.gz"
      sha256 "2dbf7fe5f4ccffaeb6371b02bc47fdc473f06e4d8c752ba8e72544636631c1e0"
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
