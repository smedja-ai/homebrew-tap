# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.863"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/8bf3d64073ec28112801348c7205603ebfa22c8d/smedja-darwin-arm64.tar.gz"
      sha256 "775a8e2fcb76f0c43331ed5b49bd92f1229c8921b5e0b14c9b36930cd4c7d33b"
    end
    on_intel do
      url "https://console.smedja.app/dl/8bf3d64073ec28112801348c7205603ebfa22c8d/smedja-darwin-amd64.tar.gz"
      sha256 "7903b97130fa92f2d742bcce2180264484423fd6f3e0980a95f460e99dbcb033"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/8bf3d64073ec28112801348c7205603ebfa22c8d/smedja-linux-arm64.tar.gz"
      sha256 "db4b2918cbc40e15aebc073a511cfd8e70134815090cd7ca19372c3bac8f92e1"
    end
    on_intel do
      url "https://console.smedja.app/dl/8bf3d64073ec28112801348c7205603ebfa22c8d/smedja-linux-amd64.tar.gz"
      sha256 "de902ea16740a071f4846c03e38441d55babab180768f46a80b41c0869645723"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
