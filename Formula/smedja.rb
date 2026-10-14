# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1286"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/d6c21a2fb2f1d2ca4ece00754066911944d34c94/smedja-darwin-arm64.tar.gz"
      sha256 "483ac98240f33923342e01bb8602e1381d67924d025d518443997c73232e864c"
    end
    on_intel do
      url "https://console.smedja.app/dl/d6c21a2fb2f1d2ca4ece00754066911944d34c94/smedja-darwin-amd64.tar.gz"
      sha256 "146b188eea71de640b22fc48b61519315e373ddd18281eef7a79854dc85d3d27"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/d6c21a2fb2f1d2ca4ece00754066911944d34c94/smedja-linux-arm64.tar.gz"
      sha256 "24ff8790aa9cebbaa626b9059b321ef983975d8f9480c25806b477321dd2e8ed"
    end
    on_intel do
      url "https://console.smedja.app/dl/d6c21a2fb2f1d2ca4ece00754066911944d34c94/smedja-linux-amd64.tar.gz"
      sha256 "206f2aeaa0ab4e0653f256455db81fb13314dfe7068577b81b5e13eeb929f39d"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
