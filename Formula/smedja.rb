# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1474"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c878f11ed2273080cb67353f56e1ae0eabfb5e5d/smedja-darwin-arm64.tar.gz"
      sha256 "3fe8552985842b5d240221154f3d34af7259d0bd3df0ae501ecef486112c2f04"
    end
    on_intel do
      url "https://console.smedja.app/dl/c878f11ed2273080cb67353f56e1ae0eabfb5e5d/smedja-darwin-amd64.tar.gz"
      sha256 "96f244e763853ab2552bf217d6665e351f8ce59f396669d4e55c4316eff2ec86"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c878f11ed2273080cb67353f56e1ae0eabfb5e5d/smedja-linux-arm64.tar.gz"
      sha256 "7eea1789c6eb942db39dbee99277233ce10ded66c59290303349a8cd1c2f110b"
    end
    on_intel do
      url "https://console.smedja.app/dl/c878f11ed2273080cb67353f56e1ae0eabfb5e5d/smedja-linux-amd64.tar.gz"
      sha256 "42717647b4401306171a5e6085d704f102b693eb114dfb227a0bf53f9dfe44c2"
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
