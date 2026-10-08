# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1021"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/919c9dd4ee07215c9aca4672755253bd9a54bd8c/smedja-darwin-arm64.tar.gz"
      sha256 "a5374e033d0a646b333bb4750e863dbe49f504c54a596c18b85dc5db1c95cdad"
    end
    on_intel do
      url "https://console.smedja.app/dl/919c9dd4ee07215c9aca4672755253bd9a54bd8c/smedja-darwin-amd64.tar.gz"
      sha256 "7c3724d15295009a708f9491e201cfcaced9143da4e6653afadf4459d5b69e8f"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/919c9dd4ee07215c9aca4672755253bd9a54bd8c/smedja-linux-arm64.tar.gz"
      sha256 "51725cd54ea18df09c28976fb2d5d9e1b9308b057e1173b66690433df055a226"
    end
    on_intel do
      url "https://console.smedja.app/dl/919c9dd4ee07215c9aca4672755253bd9a54bd8c/smedja-linux-amd64.tar.gz"
      sha256 "882a5774c0e8949ce2afcecfd72fecaf5fc2c97da617f48137726ecc49100193"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
