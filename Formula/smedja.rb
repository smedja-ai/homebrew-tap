# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.929"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/6793a1a240c09ba9ed6d84b03bba2be6373a8e19/smedja-darwin-arm64.tar.gz"
      sha256 "476a28422977eea83dde427077905e4048b170338ebfa57a9822c7bba738cea1"
    end
    on_intel do
      url "https://console.smedja.app/dl/6793a1a240c09ba9ed6d84b03bba2be6373a8e19/smedja-darwin-amd64.tar.gz"
      sha256 "86b0c61f2d23b1176d793523e8d50d5fb0a2c2a5caad8f64699b240a651e40d3"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/6793a1a240c09ba9ed6d84b03bba2be6373a8e19/smedja-linux-arm64.tar.gz"
      sha256 "1bf55b4f72d7a48dd2bf0cf47d971aca93dc3e619d91a65aa66e176a4e680691"
    end
    on_intel do
      url "https://console.smedja.app/dl/6793a1a240c09ba9ed6d84b03bba2be6373a8e19/smedja-linux-amd64.tar.gz"
      sha256 "5ef7af7f5a216bea603259213db1bab8bcde1039dd0a6a5a02dc3d76268633b8"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
