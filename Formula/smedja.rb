# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1129"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/148892d087b5a427a644b1d5de45469940baedb6/smedja-darwin-arm64.tar.gz"
      sha256 "2420720aff76992567a4489c3c0fe3585f3fb98367d70c889e268bb68a3a89a5"
    end
    on_intel do
      url "https://console.smedja.app/dl/148892d087b5a427a644b1d5de45469940baedb6/smedja-darwin-amd64.tar.gz"
      sha256 "9951b477d5a4b8b135d924aa02d00c6d74597b8d9e67e49bd7daf3ad1d919e8d"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/148892d087b5a427a644b1d5de45469940baedb6/smedja-linux-arm64.tar.gz"
      sha256 "5ddd16f80ed8900aa65bf5cc2e7da4e46a9476a1a45b6bfd2874278dfe9e2d2c"
    end
    on_intel do
      url "https://console.smedja.app/dl/148892d087b5a427a644b1d5de45469940baedb6/smedja-linux-amd64.tar.gz"
      sha256 "6d8121d8e4e5ffc2845f9cfe998844cdb911e3711c1cb05dd79994cdf4f03920"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
