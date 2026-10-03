# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.856"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/c74929e9c061d6251a7bdb6f695d623dd3c7f232/smedja-darwin-arm64.tar.gz"
      sha256 "5dbc810c3d9fa3f8783e47c790ee3bacc47e95128f0d01c752b70645493e9c86"
    end
    on_intel do
      url "https://console.smedja.app/dl/c74929e9c061d6251a7bdb6f695d623dd3c7f232/smedja-darwin-amd64.tar.gz"
      sha256 "eb79d5550b9637f8b24cb898940846b87a08595452476068bab09333bab947f6"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/c74929e9c061d6251a7bdb6f695d623dd3c7f232/smedja-linux-arm64.tar.gz"
      sha256 "34151a100d01414d1ca8d67ac844d4778d62c390f5afb3059437f98ec35f7fe1"
    end
    on_intel do
      url "https://console.smedja.app/dl/c74929e9c061d6251a7bdb6f695d623dd3c7f232/smedja-linux-amd64.tar.gz"
      sha256 "d10bc6264832fc3c061d6b79dae6863475e8c45ca2e625bb41b201af057ed085"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
