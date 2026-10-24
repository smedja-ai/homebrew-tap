# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1443"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/b1a1bb988d81b1659bfab8440c586fbfb41f7eb3/smedja-darwin-arm64.tar.gz"
      sha256 "f55cf6973f2b0f144a774d27ed16abbc6569b144a7761902bedcb3923e01ed14"
    end
    on_intel do
      url "https://console.smedja.app/dl/b1a1bb988d81b1659bfab8440c586fbfb41f7eb3/smedja-darwin-amd64.tar.gz"
      sha256 "17caa0e161d53247afca20fbc3ef5855ec864ff49193cc2f078443d2a8951139"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/b1a1bb988d81b1659bfab8440c586fbfb41f7eb3/smedja-linux-arm64.tar.gz"
      sha256 "f246424749f875b03782ea8fb078895f3fbef550c59e245e6e70dd6ca6a651aa"
    end
    on_intel do
      url "https://console.smedja.app/dl/b1a1bb988d81b1659bfab8440c586fbfb41f7eb3/smedja-linux-amd64.tar.gz"
      sha256 "0c53e05b2abfdccc10843737439617afe1ac60dc1cf316afa7bd872a48952cda"
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
