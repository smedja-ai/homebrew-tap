# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1298"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/bdff32680e4acab271644af6d081c01c99c55d03/smedja-darwin-arm64.tar.gz"
      sha256 "f18a7d2126a2b0874f258541bd39663bfd4c69e296d18fabe4df2bd333ac8592"
    end
    on_intel do
      url "https://console.smedja.app/dl/bdff32680e4acab271644af6d081c01c99c55d03/smedja-darwin-amd64.tar.gz"
      sha256 "fbd5239c5f1dc57a1c46bdfb028f4789e807d6b0e233df4ebc263001308d3482"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/bdff32680e4acab271644af6d081c01c99c55d03/smedja-linux-arm64.tar.gz"
      sha256 "fcdd21ced78c60352f5b17bf50deb479bcaacc6d6c43570bfd12f1fba8af3e0a"
    end
    on_intel do
      url "https://console.smedja.app/dl/bdff32680e4acab271644af6d081c01c99c55d03/smedja-linux-amd64.tar.gz"
      sha256 "b10042645ae76b4f4b8cb47303568af217a8267120a0a4ae6d9f3f5793ef625f"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
