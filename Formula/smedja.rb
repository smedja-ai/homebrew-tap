# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.884"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/232fa735f5b043c69932120b9e90b41eac69dc04/smedja-darwin-arm64.tar.gz"
      sha256 "527066765e06089130a2ba4ff8e5fb2de6a6253fd2b8c67f79900fb6806a0d24"
    end
    on_intel do
      url "https://console.smedja.app/dl/232fa735f5b043c69932120b9e90b41eac69dc04/smedja-darwin-amd64.tar.gz"
      sha256 "65d533539ef4df745d8e70ca43d68a0a334b6fc336a1727a005a3c31dcceb9bf"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/232fa735f5b043c69932120b9e90b41eac69dc04/smedja-linux-arm64.tar.gz"
      sha256 "efb0c551679ef7bd2c95f1c1c9f01c62bc26172c626c3d7f86a0c291b5663812"
    end
    on_intel do
      url "https://console.smedja.app/dl/232fa735f5b043c69932120b9e90b41eac69dc04/smedja-linux-amd64.tar.gz"
      sha256 "9c1369fd833a906e706169765c47550184a7f66244298ef3e638ca9b6c561aab"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
