# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1043"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/a90391655d2223955b59f736c3b9775b08d3a6cc/smedja-darwin-arm64.tar.gz"
      sha256 "94826615499ec82d1889582012ad03054fba7093214746b5fb5eaef14d311834"
    end
    on_intel do
      url "https://console.smedja.app/dl/a90391655d2223955b59f736c3b9775b08d3a6cc/smedja-darwin-amd64.tar.gz"
      sha256 "e391ba6e44dee677874c2db4a7226c6b11e9bdace0349b7dd6e3d1cf2c6a0e26"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/a90391655d2223955b59f736c3b9775b08d3a6cc/smedja-linux-arm64.tar.gz"
      sha256 "435c5d9cdc2b472f208be6938081c0c69682e766448e8eee5ddd76862017cf59"
    end
    on_intel do
      url "https://console.smedja.app/dl/a90391655d2223955b59f736c3b9775b08d3a6cc/smedja-linux-amd64.tar.gz"
      sha256 "dcfd2a2b9fe89fd2f62731c3357a10585565fc49b11c6cd36369d3523ab0b660"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
