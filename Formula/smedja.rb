# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1559"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/bb8b2de0dcea66f327874fdde4057fcddfc6b8f3/smedja-darwin-arm64.tar.gz"
      sha256 "e4c75b8a36d076cbceba2ec501f0ca14ed3b853a2201ed533146f42386e59890"
    end
    on_intel do
      url "https://console.smedja.app/dl/bb8b2de0dcea66f327874fdde4057fcddfc6b8f3/smedja-darwin-amd64.tar.gz"
      sha256 "ab0bf499b1ecdb38a208d537c8ebf047f6058e132740c008dd3a9a07e8750ebd"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/bb8b2de0dcea66f327874fdde4057fcddfc6b8f3/smedja-linux-arm64.tar.gz"
      sha256 "7ad072228175925fa93f281aaf5480668f186887e41fdbc96ef72530a5f68c8e"
    end
    on_intel do
      url "https://console.smedja.app/dl/bb8b2de0dcea66f327874fdde4057fcddfc6b8f3/smedja-linux-amd64.tar.gz"
      sha256 "a19ebd0c3aa4288156714638ba9c8556070610532749817228e961fe512ebe4c"
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
