# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1572"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/2b68a2dcd4457ee5696790c5f0a3ab959e29b3bc/smedja-darwin-arm64.tar.gz"
      sha256 "5173a30e9df328b3b0f7c7ce47b1a241506416adfb70589fb95412f6a72bf360"
    end
    on_intel do
      url "https://console.smedja.app/dl/2b68a2dcd4457ee5696790c5f0a3ab959e29b3bc/smedja-darwin-amd64.tar.gz"
      sha256 "5ba50d48706d364305048e3413b97b47149f33d9400d73d47e31f08cd0721787"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/2b68a2dcd4457ee5696790c5f0a3ab959e29b3bc/smedja-linux-arm64.tar.gz"
      sha256 "56e457c680c4034b8a7a2d8a39fc856db2314dea99749520480907ed398dd01b"
    end
    on_intel do
      url "https://console.smedja.app/dl/2b68a2dcd4457ee5696790c5f0a3ab959e29b3bc/smedja-linux-amd64.tar.gz"
      sha256 "aef345b232054e139330dc5a2e9f4447f1b05a6c0da39215afbe49e5a4ff40db"
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
