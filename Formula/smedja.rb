# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1039"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/ff2899c367e44e35055c113b233721c288386db5/smedja-darwin-arm64.tar.gz"
      sha256 "5b7204f1d2e4886b2fa574d1440cb871c21ac4c681b162f19492fab09fc67e78"
    end
    on_intel do
      url "https://console.smedja.app/dl/ff2899c367e44e35055c113b233721c288386db5/smedja-darwin-amd64.tar.gz"
      sha256 "6dc66d6bfd38122651d75d2fa04b27200e0647eda1dc933e367ff2e305695423"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/ff2899c367e44e35055c113b233721c288386db5/smedja-linux-arm64.tar.gz"
      sha256 "8eb93ecbda332a7fa57766d99713a163d35024d4c6a2fd6eb96c58c7b7156097"
    end
    on_intel do
      url "https://console.smedja.app/dl/ff2899c367e44e35055c113b233721c288386db5/smedja-linux-amd64.tar.gz"
      sha256 "c8fe65701ba4f466ac94aafe51a4030bf6ac54f42c74287a51052559092b08d3"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
