# Written by smedja's deploy on every release (dist/packages.sh). An edit here
# is overwritten by the next one.
class Smedja < Formula
  desc "Terminal client for smedja, coding agents in hosted workspaces"
  homepage "https://www.smedja.app"
  version "0.1243"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://console.smedja.app/dl/3d23f46b75df4e3e0f1ed3e2752332a5cdfb4c65/smedja-darwin-arm64.tar.gz"
      sha256 "93f73170cedbc0f9af8643c3de4add0d3ce20afad67a4e8c50df061c4f72a504"
    end
    on_intel do
      url "https://console.smedja.app/dl/3d23f46b75df4e3e0f1ed3e2752332a5cdfb4c65/smedja-darwin-amd64.tar.gz"
      sha256 "bfb0e11a054c98bd9b989e11eb501f0ae2c1567afdbb81972d484dd8e91dea83"
    end
  end

  on_linux do
    on_arm do
      url "https://console.smedja.app/dl/3d23f46b75df4e3e0f1ed3e2752332a5cdfb4c65/smedja-linux-arm64.tar.gz"
      sha256 "6a056814df3b5d5d962aa2d7e82ef4b43b2aa0e59a50f588978723ba2175168f"
    end
    on_intel do
      url "https://console.smedja.app/dl/3d23f46b75df4e3e0f1ed3e2752332a5cdfb4c65/smedja-linux-amd64.tar.gz"
      sha256 "01e96ddf33715d9f91d6ab8c0481d4ab01880356e1fb54f91eeabe25186e6e81"
    end
  end

  def install
    bin.install "smedja"
  end

  test do
    system bin/"smedja", "--version"
  end
end
